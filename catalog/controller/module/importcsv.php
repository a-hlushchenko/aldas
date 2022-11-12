<?php
class ControllerModuleImportcsv extends Controller {
	public function index() {
		$f = fopen("/var/www/transformer/data/www/aldas.ru/CSV.csv", "rt") or die("Ошибка!");
		$product = array();
		for ($i=0; $data=fgetcsv($f,1000,";"); $i++) {
			if($i<4) continue;
		  //$num = count($data);
		  //echo "<h3>Строка номер $i (полей: $num):</h3>";
		  //for ($c=0; $c<$num; $c++)
		    //print "[$c]: $data[$c]<br>";

		    //if($data[3]!=''){
				$price = $data[2];
				$price = iconv("windows-1251", "utf-8", $price);
				$price = str_replace(' ', '', $price);
				$price = str_replace('руб.', '', $price);
				$price = str_replace(',00', '', $price);
				$price = (int)$price;

				if($price>0){
					$name = $data[1];
					$name = trim($name);
					$name_ar = explode(' ', $name);
					$model = $name_ar[0];
					$model = iconv("windows-1251", "utf-8", $model);
					if($model == 'Кукри') {
						$x = count($name_ar);
						$model = $name_ar[$x-1];
					}

					$product[] = array(
						'model' => $model,
						'name' => $name,
						'price' => $price
					);
					//echo '<br/>model='.$model;
					//echo '<br/>model='.$model.'== name='.$name.'== price='.$price.'==';
				}
		    	

		    	
		    	
		    //}
		}
		fclose($f);

		
		foreach ($product as $key => $data) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "product SET model = '" . $this->db->escape($data['model']) . "', 
			 quantity = '1', minimum = '1', 
			subtract = '1', 
			new = '0', 
			template = '2', 
			stock_status_id = '7', manufacturer_id = '0', shipping = '1', price = '" . (float)$data['price'] . "', 
			points = '', weight = '0', weight_class_id = '0', length = '0', width = '0', height = '0', 
			length_class_id = '1', 
			status = '1', tax_class_id = '0', sort_order = '0', date_added = NOW()");

			$product_id = $this->db->getLastId();

			/*if (isset($data['image'])) {
				$this->db->query("UPDATE " . DB_PREFIX . "product SET image = '" . $this->db->escape($data['image']) . "' WHERE product_id = '" . (int)$product_id . "'");
			}*/

			$data['name'] = iconv("windows-1251", "utf-8", $data['name']);
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_description SET product_id = '" . (int)$product_id . "', 
				language_id = '1', name = '" . $this->db->escape($data['name']) . "'");

			$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_store SET product_id = '" . (int)$product_id . "', store_id = ''");
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = '" . (int)$product_id . "', category_id = '133'");
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = '" . (int)$product_id . "', category_id = '136'");
			$this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET main_category = 1, product_id = '" . (int)$product_id . "', category_id = '131'");
			

			$repls=array(
				'а'=>'a', 'б'=>'b', 'в'=>'v', 'г'=>'g', 'д'=>'d', 'е'=>'e', 'ё'=>'e', 'ж'=>'j', 'з'=>'z', 'и'=>'i', 'й'=>'j', 'к'=>'k', 'л'=>'l',
				'м'=>'m', 'н'=>'n', 'о'=>'o', 'п'=>'p', 'р'=>'r', 'с'=>'s', 'т'=>'t', 'у'=>'u', 'ф'=>'f',
				'х'=>'h', 'ц'=>'c', 'ч'=>'ch', 'ш'=>'sch', 'щ'=>'sch','ь'=>'','ъ'=>'','ы'=>'y', 'э'=>'e', 'ю'=>'u', 'я'=>'ja',
				'!'=>'', '@'=>'', '#'=>'', '$'=>'', '%'=>'', '^'=>'', '&'=>'', '*'=>'',
				'('=>'', ')'=>'', 
				'='=>'', '.'=>'', ','=>'', '?'=>'', '/'=>'-', ' ' => '', "+" => '-', 
				'\\'=>'-', '|'=>'', '"'=>'', "'"=>'', ' '=>'-', '"'=>'',"\""=>'',"&quot;"=>'',"quot;"=>'',"<br/>"=>''
			);
			
			$str_in=mb_strtolower($data['name'],'UTF-8');
			//echo $str_in;
			//$str_in = html_entity_decode($str_in, ENT_QUOTES, 'UTF-8');
			$str_out=strtr($str_in,$repls);
			/*echo $data['name'].'<br/>';
			echo $str_out.'<br/><br/><br/>';*/
			
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'product_id=" . (int)$product_id . "', keyword = '" . $this->db->escape($str_out) . "'");
			

		}

		
	}
}
//http://www.aldas.ru/index.php?route=module/Importcsv