<?php
class ControllerModuleCategoryHeader2 extends Controller {

	public function __construct($registry) 
   {
    parent::__construct($registry);
    
    $store_id = $this->config->get('config_store_id'); 
    $lang_id = $this->config->get('config_language_id');
    //$layout_id = $this->welldone->get_current_layout_id($store_id);
    $layout_id = 1;
    
    //$this->cache_key = "module-categoryheader-{$store_id}-{$layout_id}-{$lang_id}";
    $this->cache_key = "module-categoryheader-{$layout_id}-{$lang_id}";
   } 

	public function index() {

		$cache = 0;
		if ($cache){
	       $content = $this->welldone->cache->get($this->cache_key);
	       if ($content !== false) 
	       { 
	         $this->welldone->set_settings('categoryheader', $content);
	         return $content;
	       }
	     }

		$this->load->language('module/category');

		$data['heading_title'] = $this->language->get('heading_title');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($parts[0])) {
			$data['category_id'] = $parts[0];
		} else {
			$data['category_id'] = 0;
		}

		if (isset($parts[1])) {
			$data['child_id'] = $parts[1];
		} else {
			$data['child_id'] = 0;
		}

		$types = $this->getTypes($this->data['category_id']);
		$types2 = $this->getTypes_by_id($this->data['category_id']);

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}

		$data['categories'] = array();

		//if($route=='common/home'){
			/*$data['category_id'] = 20;
			$data['category_id2'] = 133;*/
			$cat_array = array(20,133);
		//}
		
		$categories = $this->model_catalog_category->getCategories(0);	
		//vdump($categories);

		foreach ($categories as $category) {
			if(!$category['top']) continue;
			$children_data = array();

			if ($category['category_id'] ==20) {
				// категория Кухни ( Каталог кухонь )

				foreach ($types as $id) {
					$children_data[$id]=array();
				}
				vdump($children_data);
				
				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach($children as $child) {
					//$filter_data = array('filter_category_id' => $child['category_id'], 'filter_sub_category' => true);

					$key = $types2[$child['type_id']];
					
					$children_data[$key][$child['category_id']] = array(
						'category_id' => $child['category_id'],
						'type_id' => $child['type_id'],
						'name' => $child['name'],
						'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}
				$data['categories'][] = array(
				//$data['categories'][$category['type_id']][$category['category_id']] = array(
					'category_id' => $category['category_id'],
					'type_id' => $category['type_id'],
					//'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'name'        => $category['name'],
					'children'    => $children_data,
					'children2'    => array(),
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			} elseif($category['category_id'] ==133){
				// категория Все для кухни
				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach($children as $child) {
					//$filter_data = array('filter_category_id' => $child['category_id'], 'filter_sub_category' => true);

					//$key = $types2[];
					
					$children_data[] = array(
						'category_id' => $child['category_id'],
						'type_id' => $child['type_id'],
						'name' => $child['name'],
						'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}
				$data['categories'][] = array(
				//$data['categories'][$category['type_id']][$category['category_id']] = array(
					'category_id' => $category['category_id'],
					'type_id' => $category['type_id'],
					//'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'name'        => $category['name'],
					'children'    => array(),
					'children2'    => $children_data,
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		$data['categories_push'] =$data['categories'];

/*echo "<pre>";
print_r($data['categories']);
echo "</pre>";*/
		
		$content = $this->load->view('default/template/module/category_header2.tpl', $data);
		echo $content;
		// для поддоменов
	    $content =str_replace(HTTP_SERVER, '', $content);
		$this->welldone->set_settings('categoryheaderpush', $content);
       	$this->welldone->cache->set($this->cache_key,$content);
       	$content =str_replace(HTTP_SERVER, '', $content);	 
       return $content;
		
	}

	private function getTypes($categories) {
		//$types =array();
		$types=array('Кухни','Цена','Формат','Стиль','Материал','Размер','Цвет');

		return $types;
	}
	private function getTypes_by_id() {
		$types=array('0'=>'','1'=>'Кухни','2'=>'Цена','3'=>'Формат','4'=>'Стиль','5'=>'Материал','6'=>'Размер','7'=>'Цвет');

		return $types;
	}

}