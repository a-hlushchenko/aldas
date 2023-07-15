<?php
class ControllerCommonHome extends Controller {
	
	//private $categories = array();
	protected function getcat() {
		$categories[71]=array('category_id'=>'71','name'=>'Современные кухни','image1'=>'images/category/cat1/cat1_kuhnjaromen1.jpg','image2'=>'images/category/cat1/cat1_kuhnjasirena2.jpg','href'=>'katalog/sovremennye/');
		$categories[73]=array('category_id'=>'73','name'=>'Классические кухни','image1'=>'images/category/cat2/cat2_kuhnjaartemida1.jpg','image2'=>'images/category/cat2/cat2_kuhnjazevs1.jpg','href'=>'katalog/klassicheskie/');
		$categories[77]=array('category_id'=>'77','name'=>'Кухни в стиле модерн','image1'=>'images/category/cat3/kuhnja pion.jpg','image2'=>'images/category/cat3/kuhnja adazhio.jpg','href'=>'katalog/modern/');
		$categories[79]=array('category_id'=>'79','name'=>'Кухни в стиле прованс','image1'=>'images/category/cat4/kuhnjazhanetta1.jpg','image2'=>'images/category/cat4/kuhnjasjurpriz2.jpg','href'=>'katalog/provans/');
		$categories[87]=array('category_id'=>'87','name'=>'Кухни из массива дерева','image1'=>'images/category/cat5/kuhnjalegenda1.jpg','image2'=>'images/category/cat5/kuhnjaizabel4.jpg','href'=>'katalog/massiv/');
		$categories[89]=array('category_id'=>'89','name'=>'Кухни из МДФ','image1'=>'images/category/cat6/kuhnja azalija.jpg','image2'=>'images/category/cat6/kuhnja%20allegro.jpg','href'=>'katalog/mdf/');
		$categories[91]=array('category_id'=>'91','name'=>'Кухни из эмали','image1'=>'images/category/cat7/kuhnjafoliant1.jpg','image2'=>'images/category/cat7/kuhnja kreativ.jpg','href'=>'katalog/emal/');
		$categories[85]=array('category_id'=>'85','name'=>'Кухни из пластика','image1'=>'images/category/cat8/kuhnjaalbion1.jpg','image2'=>'images/category/cat8/kuhnjaarlekino1.jpg','href'=>'katalog/plastik/');
		$categories[27]=array('category_id'=>'27','name'=>'Угловые кухни','image1'=>'images/category/cat9/kuhnja allegro.jpg','image2'=>'images/category/cat9/kuhnja aronija.jpg','href'=>'katalog/uglovye/');
		$categories[68]=array('category_id'=>'68','name'=>'Недорогие кухни','image1'=>'images/category/cat10/kuhnja%20gljasse.jpg','image2'=>'images/category/cat10/kuhnja%20kreativ.jpg','href'=>'katalog/nedorogie/');
		return $categories;
	}

	public function index() {
		if($this->config->get('config_city')){
			$meta_title = 'Кухни от производителя на заказ '.morpher_inflect($this->config->get('config_city'),'gde');
			//$meta_title = 'Кухни от производителя на заказ '.$this->config->get('config_city');
			
		} else {
			$meta_title = $this->config->get('config_meta_title');
		}

		//$meta_title = morpher_inflect($this->config->get('config_meta_title'),'gde');
		$this->document->setTitle($meta_title);
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		//$categories=array('71','73','77','79','87','89','91','85','27','68');
		
		
		$categories = $this->getcat();

		//$this->document->addScript('catalog/view/javascript/owl.carousel.js');
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		
		/*foreach ($categories as $key => $category) {
			$filter_data = array(
				'filter_category_id' => $category['category_id'],
				'limit'              => 4,
				'limit_cache'        => 20
			);
			$products = $this->model_catalog_product->getProductsForCarousel($filter_data);	
			foreach (array_slice($products, 0, 4) as $result) {
                if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 180, 118,'wh');
					//$image = $this->model_tool_image->resize($result['image'], 479, 272,'wh');
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 180, 118);
					//$image = $this->model_tool_image->resize('placeholder.png', 479, 272);
				}
				$price = $this->currency->format($this->tax->calculate($result['price'], 0, $this->config->get('config_tax')));
				$categories[$key]['products'][] = array(
					'product_id'	=> $result['product_id'],
					'image'	=> $image,
					'price'	=> $price
					);
			}

			//$categories[$key]['products'] = array_slice($products, 0, 4);
	
		}
		$data['categories'] = $categories;*/
		
		$data['column_left'] = $this->load->controller('common/column_left');
		//$data['column_right'] = $this->load->controller('common/column_right');
		//$data['content_top'] = $this->load->controller('common/content_top');
		//$data['content_bottom'] = $this->load->controller('common/content_bottom');
		
		$data['news'] = $this->load->controller('module/news_carousel');

		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));

	}
	public function getproducts() {

		if (isset($this->request->post['json'])) {
			$json = $this->request->post['json'];
			if (isset($this->request->post['category_id'])) {
				$category_id = $this->request->post['category_id'];
			} else {
				$category_id=134;
			}
			$page =1;
			if (isset($this->request->post['page'])) {
				$page = $this->request->post['page'];
			} 
		} else {
			$json = false;
			return false;
		}

		$limit = 2;
		$products = array();
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		
			$filter_data = array(
				'filter_category_id' => $category_id,
				//'limit'              => 4,
				'limit_cache'        => 20
			);
			$products = $this->model_catalog_product->getProductsForCarousel($filter_data);	
			$html ='';
			foreach (array_slice($products, $page*2-1, 2) as $result) {
                if ($result['image']) {
					//$image = $this->model_tool_image->resize($result['image'], 479, 272,'wh');
					$image = $this->model_tool_image->resize($result['image'], 180, 118,'wh');
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 180, 118);
					//$image = $this->model_tool_image->resize('placeholder.png', 479, 272);
				}
				$price = $this->currency->format($this->tax->calculate($result['price'], 0, $this->config->get('config_tax')));
				$categories = $this->getcat();
				$href = $categories[$category_id]['href'];
				$name = $categories[$category_id]['name'];
				$html .='<div class="">';
				$html .='<div><a href="'. $href.'" title="'.$name.'" alt="'.$name.'"><img src="'. $image.'"/></a></div>';
				$html .='<div class="price"><a href="'.$href.'" title="'.$name.'" alt="'.$name.'">ЦЕНА ОТ: <span>'. $price.'</span></a></div>';
				$html .='</div>';
			}

			//$categories[$key]['products'] = array_slice($products, 0, 4);
	
		

		
		if(!$json){
			
		}else{
			/*$data['products'] = $products;
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/owl_template.tpl')) {
				$json = $this->load->view($this->config->get('config_template') . '/template/product/owl_template.tpl', $data);
			} else {
				$json = $this->load->view('default/template/product/owl_template.tpl', $data);
			}*/

			//$json = array();

			$this->response->addHeader('Content-Type: application/json');
			$this->response->setOutput(json_encode($html));
		}
	}
}


			                	