<?php
class ControllerModuleCategory extends Controller {
	public function index() {
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

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			$children_data = array();

			if ($category['category_id'] == $data['category_id']) {

				foreach ($types as $id) {
					$children_data[$id]=array();
				}
				
				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach($children as $child) {
					$filter_data = array('filter_category_id' => $child['category_id'], 'filter_sub_category' => true);

					$key = $types2[$child['type_id']];
					
					$children_data[$key][$child['category_id']] = array(
						'category_id' => $child['category_id'],
						'type_id' => $child['type_id'],
						'name' => $child['name'],
						'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}
			}


			$data['categories'][] = array(
			//$data['categories'][$category['type_id']][$category['category_id']] = array(
				'category_id' => $category['category_id'],
				'type_id' => $category['type_id'],
				//'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
				'name'        => $category['name'],
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}

/*echo "<pre>";
print_r($data['categories']);
echo "</pre>";*/

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/category.tpl', $data);
		} else {
			return $this->load->view('default/template/module/category.tpl', $data);
		}
	}

	private function getTypes($categories) {
		//$types =array();
		$types=array('Кухни','По цене','Формат','По стилю','По материалу','Размеры','По цвету');

		return $types;
	}
	private function getTypes_by_id() {
		$types=array('0'=>'','1'=>'Кухни','2'=>'По цене','3'=>'Формат','4'=>'По стилю','5'=>'По материалу','6'=>'Размеры','7'=>'По цвету');

		return $types;
	}

}