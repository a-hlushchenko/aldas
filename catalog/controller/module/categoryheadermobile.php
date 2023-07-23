<?php
class ControllerModuleCategoryHeaderMobile extends Controller
{

	public function __construct($registry)
	{
		parent::__construct($registry);

		$store_id = $this->config->get('config_store_id');
		$lang_id = $this->config->get('config_language_id');
		//$layout_id = $this->welldone->get_current_layout_id($store_id);
		$layout_id = 1;

		//$this->cache_key = "module-categoryheader-{$store_id}-{$layout_id}-{$lang_id}";
		$this->cache_key = "module-categoryheader_mobile-{$layout_id}-{$lang_id}";
	}

	public function index()
	{

		$cache = 1;
		if ($cache) {
			$content = $this->welldone->cache->get($this->cache_key);
			if ($content !== false) {
				$this->welldone->set_settings('categoryheader_mobile', $content);
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

		$types = $this->getTypes($data['category_id']);

		$types2 = $this->getTypes_by_id($data['category_id']);

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}

		$colors = array(
			'бежевые' => 'background: rgb(243,226,199);background: linear-gradient(to right,  rgba(243,226,199,1) 0%,rgba(233,212,179,1) 59%);',
			'белые' => 'background: rgb(255,255,255);background: linear-gradient(to right,  rgba(255,255,255,1) 0%,rgba(239,239,239,1) 53%,rgba(255,255,255,1) 100%);',
			'бирюзовые' => 'background: rgb(135,224,253);background: linear-gradient(to bottom,  rgba(135,224,253,1) 2%,rgba(5,171,224,1) 100%);',
			'венге' => 'background: rgb(240,183,161);background: linear-gradient(to right,  rgba(240,183,161,1) 0%,rgba(191,110,78,1) 47%);',
			'голубые' => 'background: rgb(0,183,234);background: linear-gradient(to bottom,  rgba(0,183,234,1) 51%,rgba(0,158,195,1) 100%);',
			'желтые' => 'background: rgb(254,252,234);background: linear-gradient(to right,  rgba(254,252,234,1) 0%,rgba(241,218,54,1) 32%);',
			'зеленые' => 'background: rgb(191,210,85);background: linear-gradient(to right,  rgba(191,210,85,1) 0%,rgba(158,203,45,1) 77%);',
			'коричневые' => 'background: rgb(175,108,0);background: linear-gradient(to bottom,  rgba(175,108,0,1) 0%,rgba(145,84,0,1) 100%);',
			'красные' => 'background: rgb(255,158,158);background: linear-gradient(to bottom,  rgba(255,158,158,1) 0%,rgba(255,26,0,1) 100%);',
			'оранжевые' => 'background: rgb(255,168,76);background: linear-gradient(to bottom,  rgba(255,168,76,1) 24%,rgba(255,168,76,1) 24%,rgba(255,123,13,1) 100%);',
			'салатовые' => 'background: rgb(190,221,77);background: linear-gradient(to bottom,  rgba(190,221,77,1) 4%,rgba(188,221,68,1) 66%,rgba(171,220,40,1) 100%);',
			'серые' => 'background: rgb(234,234,234);background: linear-gradient(to bottom,  rgba(234,234,234,1) 1%,rgba(158,158,158,1) 69%);',
			'синие' => 'background: rgb(73,155,234);background: linear-gradient(to bottom,  rgba(73,155,234,1) 58%,rgba(32,124,229,1) 100%);',
			'фиолетовые' => 'background: rgb(229,112,231);background: linear-gradient(to bottom,  rgba(229,112,231,1) 0%,rgba(200,94,199,1) 61%,rgba(168,73,163,1) 100%);',
			'фисташковые' => 'background: rgb(191,210,85);background: linear-gradient(to bottom,  rgba(191,210,85,1) 1%,rgba(158,203,45,1) 97%);',
			'черные' => 'background: rgb(84,84,84);background: linear-gradient(to right,  rgba(84,84,84,1) 0%,rgba(14,14,14,1) 100%);',
			'черно-белые' => 'background: rgb(255,255,255);background: linear-gradient(to right,  rgba(255,255,255,1) 46%,rgba(14,14,14,1) 55%);',
			'светлые с патиной' => 'background: rgb(252,255,244);background: linear-gradient(to bottom,  rgba(252,255,244,1) 14%,rgba(242,184,38,1) 48%,rgba(233,233,206,1) 88%);'
		);


		$data['categories'] = array();

		//if($route=='common/home'){
		/*$data['category_id'] = 20;
			$data['category_id2'] = 133;*/
		$cat_array = array(20, 133);
		//}

		$data['image'] = 'image/catalog/categories/catalog.jpg';

		include_once(__DIR__  . '/data/menu.php');

		$data['categories'] = getCategories();
		$data['categories_push'] = $data['categories'];

		$content = $this->load->view('default/template/module/category_header_mobile.tpl', $data);
		//echo $content;
		// для поддоменов
		$content = str_replace(HTTP_SERVER, '', $content);
		$this->welldone->set_settings('categoryheader_mobile', $content);
		$this->welldone->cache->set($this->cache_key, $content);
		$content = str_replace(HTTP_SERVER, '', $content);


		return $content;
	}

	private function getTypes($categories)
	{
		//$types =array();
		//$types=array('Кухни','Цена','Формат','Стиль','Материал','Размер','Цвет');
		$types = array('Формат', 'Стиль', 'Материал', 'Размер', 'Стоимость', 'Цвет');

		return $types;
	}
	private function getTypes_by_id()
	{
		//$types=array('0'=>'','1'=>'Кухни','2'=>'Цена','3'=>'Формат','4'=>'Стиль','5'=>'Материал','6'=>'Размер','7'=>'Цвет');
		$types = array('0' => '', '1' => '', '2' => 'Стоимость', '3' => 'Формат', '4' => 'Стиль', '5' => 'Материал', '6' => 'Размер', '7' => 'Цвет');

		return $types;
	}
}
