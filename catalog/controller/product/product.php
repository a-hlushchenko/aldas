<?php
class ControllerProductProduct extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('product/product');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$this->load->model('catalog/category');

		if (isset($this->request->get['path'])) {
			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = $path_id;
				} else {
					$path .= '_' . $path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path)
					);
				}
			}

			//подменяем категорию ПРОДУКТ на КАТАЛОГ для СЕО
				if($this->request->get['path']==131){
					$category_id=20;
				} else {
					$category_id=$this->request->get['path'];
				}

			// Set the last category breadcrumb
			$category_info = $this->model_catalog_category->getCategory($category_id);

			if ($category_info) {
				$url = '';

				if (isset($this->request->get['sort'])) {
					$url .= '&sort=' . $this->request->get['sort'];
				}

				if (isset($this->request->get['order'])) {
					$url .= '&order=' . $this->request->get['order'];
				}

				if (isset($this->request->get['page'])) {
					$url .= '&page=' . $this->request->get['page'];
				}

				if (isset($this->request->get['limit'])) {
					$url .= '&limit=' . $this->request->get['limit'];
				}

				$data['breadcrumbs'][] = array(
					'text' => $category_info['name'],
					'href' => $this->url->link('product/category', 'path=' . $category_id . $url)
				);
			}
		}


		$this->load->model('catalog/manufacturer');

		if (isset($this->request->get['manufacturer_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_brand'),
				'href' => $this->url->link('product/manufacturer')
			);

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($this->request->get['manufacturer_id']);

			if ($manufacturer_info) {
				$data['breadcrumbs'][] = array(
					'text' => $manufacturer_info['name'],
					'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url)
				);
			}
		}

		if (isset($this->request->get['search']) || isset($this->request->get['tag'])) {
			$url = '';

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_search'),
				'href' => $this->url->link('product/search', $url)
			);
		}

		if (isset($this->request->get['product_id'])) {
			$product_id = (int)$this->request->get['product_id'];
		} else {
			$product_id = 0;
		}

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['placeholder'] = $this->model_tool_image->resize('placehold.png', 154, 207);

		$product_info = $this->model_catalog_product->getProduct($product_id);

		if ($product_info) {
			$data['intprice'] = (int)$product_info['price'];

			$categoriess = $this->model_catalog_product->getProductCategories($this->request->get['product_id']);

			$data['mas_cat_attribute'] = array();

			foreach ($categoriess as $categorie_id) {
				$category_infos = $this->model_catalog_category->getCategory($categorie_id);
				if($category_infos){
					$data['mas_cat_attribute'][$category_infos['name_attibute']][$category_infos['name']] = array(
						'name' => (isset($category_infos['name']))?$category_infos['name']:'',
						'category_id' => (isset($category_infos['category_id']))?$category_infos['category_id']:'',
						'name_attibute' => (isset($category_infos['name_attibute']))?$category_infos['name_attibute']:'',
						'href'      => $this->url->link('product/category', 'path=' . $this->request->get['path'].'_'.$categorie_id),
						);
				}

			}

			$data['products'] = array();
			if(isset($data['mas_cat_attribute']['Стиль'])){

				foreach($data['mas_cat_attribute']['Стиль'] as $key => $stil){
					$dat = array(
						'filter_category_id' => $stil['category_id'],
						'sort'               => 'p.sort_order',
						'order'              => 'ASC'
					);

					$data['products'] = $this->get_prod($dat,$product_id,$url);

				}

			} else {

				$dat = array(
					'filter_category_id' => $category_id,
					'sort'               => 'p.sort_order',
					'order'              => 'ASC'
				);
				$data['products'] = $this->get_prod($dat,$product_id,$url);
			}

			//vdump($data['products']);

			//////////////////////
			// получаем столы и стулья
			$data['products_stoly'] = $this->getstol(134,'RAND()',$url,$this->request->get['path']);

			// получаем Технику
			$data['products_tehnika'] = $this->getstol(135,'p.sort_order',$url,$this->request->get['path']);

			// получаем Аксессуары
			//$data['products_accessuary'] = $this->getstol(136,$url);

			//////////////////////
			$dat = array(
				'filter_category_id' => $category_id,
				'sort'               => 'p.sort_order',
				'order'              => 'ASC'//,
				/*'start'              => 0,
				'limit'              => 10*/
			);
			$results_quick = $this->model_catalog_product->getProducts($dat,true);

			$data_quick = array();
			foreach ($results_quick as $quick) {
				$data_quick[] = $quick['product_id'];
			}

			$pr_id = array_search($product_id,$data_quick);
			$pr_prev = (isset($data_quick[(int)$pr_id - 1]))?$data_quick[(int)$pr_id - 1]:0;
			$pr_next = (isset($data_quick[(int)$pr_id + 1]))?$data_quick[(int)$pr_id + 1]:0;

			if($pr_prev){
				$prod_prev = $this->model_catalog_product->getProduct($pr_prev);
				$data['pr_prev_name'] = $prod_prev['name'];
				$data['pr_prev'] = $this->url->link('product/product', 'product_id=' . $pr_prev);
			} else {
				$data['pr_prev_name'] = '';
				$data['pr_prev'] = '';
			}
			if($pr_next){
				$prod_prev = $this->model_catalog_product->getProduct($pr_next);
				$data['pr_next_name'] = $prod_prev['name'];
				$data['pr_next'] = $this->url->link('product/product', 'product_id=' . $pr_next);
			} else {
				$data['pr_next_name'] = '';
				$data['pr_next'] = '';
			};
			//////////////////////

			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $product_info['name'],
				//'href' => $this->url->link('product/product', $url . '&product_id=' . $this->request->get['product_id'])
				'href' => false
			);

			/*if ($product_info['meta_title']) {
				$this->document->setTitle($product_info['meta_title']);
			} else {*/
				$this->document->setTitle($product_info['name']);
			//}

			$this->document->setDescription($product_info['meta_description']);
			$this->document->setKeywords($product_info['meta_keyword']);
			$this->document->addLink($this->url->link('product/product', 'product_id=' . $this->request->get['product_id']), 'canonical');
			$this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');
			$this->document->addStyle('catalog/view/theme/default/stylesheet/colors_ral.css?26');

			$this->document->addScript('catalog/view/javascript/owl.carousel.js');
			$this->document->addScript('catalog/view/javascript/tabs.js');

			/*$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/locale/'.$this->session->data['language'].'.js');
			$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
			$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');*/

			if ($product_info['meta_h1']) {
				$data['heading_title'] = $product_info['meta_h1'];
			} else {
				$data['heading_title'] = $product_info['name'];
			}

			$data['text_select'] = $this->language->get('text_select');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_reward'] = $this->language->get('text_reward');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_stock'] = $this->language->get('text_stock');
			$data['text_discount'] = $this->language->get('text_discount');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_option'] = $this->language->get('text_option');
			$data['text_minimum'] = sprintf($this->language->get('text_minimum'), $product_info['minimum']);
			$data['text_write'] = $this->language->get('text_write');
			$data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
			$data['text_note'] = $this->language->get('text_note');
			$data['text_tags'] = $this->language->get('text_tags');
			$data['text_related'] = $this->language->get('text_related');
			$data['text_payment_recurring'] = $this->language->get('text_payment_recurring');
			$data['text_loading'] = $this->language->get('text_loading');

			$data['entry_qty'] = $this->language->get('entry_qty');
			$data['entry_name'] = $this->language->get('entry_name');
			$data['entry_review'] = $this->language->get('entry_review');
			$data['entry_rating'] = $this->language->get('entry_rating');
			$data['entry_good'] = $this->language->get('entry_good');
			$data['entry_bad'] = $this->language->get('entry_bad');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_upload'] = $this->language->get('button_upload');
			$data['button_continue'] = $this->language->get('button_continue');

			$this->load->model('catalog/review');

			$data['tab_description'] = $this->language->get('tab_description');
			$data['tab_attribute'] = $this->language->get('tab_attribute');
			$data['tab_review'] = sprintf($this->language->get('tab_review'), $product_info['reviews']);

			$data['product_id'] = (int)$this->request->get['product_id'];
			$data['manufacturer'] = $product_info['manufacturer'];
			$data['manufacturers'] = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $product_info['manufacturer_id']);
			$data['model'] = $product_info['model'];
			$data['reward'] = $product_info['reward'];
			$data['points'] = $product_info['points'];
			$data['description'] = html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8');
			$data['fasad'] = $product_info['fasad'];

			if ($product_info['quantity'] <= 0) {
				$data['stock'] = $product_info['stock_status'];
			} elseif ($this->config->get('config_stock_display')) {
				$data['stock'] = $product_info['quantity'];
			} else {
				$data['stock'] = $this->language->get('text_instock');
			}

			$this->load->model('tool/image');

			if ($product_info['image']) {
				if ($this->request->server['HTTPS']) {
					//$data['popup'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));
					$data['popup'] = MAIN_HTTPS_SERVER.'image/'.$product_info['image'];
					//$data['thumb'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
					$data['thumb'] = MAIN_HTTPS_SERVER.'image/'.$product_info['image'];
					$this->document->setOgImage($data['thumb']);

				} else {
					//$data['popup'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));
					$data['popup'] = MAIN_SERVER.'image/'.$product_info['image'];
					//$data['thumb'] = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
					$data['thumb'] = MAIN_SERVER.'image/'.$product_info['image'];

				}

				$this->document->setOgImage($data['thumb']);

			} else {
				$data['thumb'] = $this->model_tool_image->resize('no_image.png', $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
				$data['popup'] = $this->model_tool_image->resize('no_image.png', $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));
			}

			$data['images'] = array();

			$results = $this->model_catalog_product->getProductImages($this->request->get['product_id']);

			foreach ($results as $result) {
				if($result['image']){
					$data['images'][] = array(
						//'popup' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'),'wh'),
						//'popup' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height')),
						'popup' => MAIN_SERVER.'image/'.$result['image'],
						//'popup2' => 'image/'.$result['image'],
						//'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_additional_width'), $this->config->get('config_image_additional_height'),'wh'),
						'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_additional_width'), $this->config->get('config_image_additional_height')),
						//'full' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_additional_width'), $this->config->get('config_image_additional_height'),'full')
						//'full' => $this->model_tool_image->resize($result['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'))
					);
				}
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$data['price'] = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_plus_30proc'] = $this->currency->format($this->tax->calculate($product_info['price']*1.3, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_minus_10proc'] = $this->currency->format($this->tax->calculate($product_info['price']*0.9, $product_info['tax_class_id'], $this->config->get('config_tax')));

				$data['price_got'] = $this->currency->format($this->tax->calculate($product_info['price']*3.6, $product_info['tax_class_id'], $this->config->get('config_tax')));

				$data['price_got_old'] = $this->currency->format($this->tax->calculate($product_info['price']*3.6*1.3, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_got_new'] = $this->currency->format($this->tax->calculate($product_info['price']*3.6*1.3*0.8, $product_info['tax_class_id'], $this->config->get('config_tax')));

				$data['price_got2'] = $this->currency->format($this->tax->calculate($product_info['price']*2*1.25, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_got3'] = $this->currency->format($this->tax->calculate($product_info['price']*3*1.25, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_got3_5'] = $this->currency->format($this->tax->calculate($product_info['price']*3.5*1.25, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_got4'] = $this->currency->format($this->tax->calculate($product_info['price']*4*1.25, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_got5'] = $this->currency->format($this->tax->calculate($product_info['price']*5*1.25, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_int'] = (int)$product_info['price'];
				$data['price_int_got'] = (int)$product_info['price']*3.6*1.25;
				$data['price_int_got2'] = (int)$product_info['price']*2*1.25;
				$data['price_int_got3'] = (int)$product_info['price']*3*1.25;
				$data['price_int_got3_5'] = (int)$product_info['price']*3.5*1.25;
				$data['price_int_got4'] = (int)$product_info['price']*4*1.25;
				$data['price_int_got5'] = (int)$product_info['price']*5*1.25;

				$data['price_module_1_int'] = (int)$product_info['price']*0.42;
				$data['price_module_1'] = $this->currency->format($this->tax->calculate($product_info['price']*0.42, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_2_int'] = (int)$product_info['price']*0.63;
				$data['price_module_2'] = $this->currency->format($this->tax->calculate($product_info['price']*0.63, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_3_int'] = (int)$product_info['price']*0.55;
				$data['price_module_3'] = $this->currency->format($this->tax->calculate($product_info['price']*0.5, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_4_int'] = (int)$product_info['price']*0.75;
				$data['price_module_4'] = $this->currency->format($this->tax->calculate($product_info['price']*0.75, $product_info['tax_class_id'], $this->config->get('config_tax')));

				$data['price_module_5_int'] = (int)$product_info['price']*0.43;
				$data['price_module_5'] = $this->currency->format($this->tax->calculate($product_info['price']*0.43, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_6_int'] = (int)$product_info['price']*0.7;
				$data['price_module_6'] = $this->currency->format($this->tax->calculate($product_info['price']*0.7, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_7_int'] = (int)$product_info['price']*0.44;
				$data['price_module_7'] = $this->currency->format($this->tax->calculate($product_info['price']*0.44, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_8_int'] = (int)$product_info['price']*0.68;
				$data['price_module_8'] = $this->currency->format($this->tax->calculate($product_info['price']*0.68, $product_info['tax_class_id'], $this->config->get('config_tax')));

				$data['price_module_9_int'] = (int)$product_info['price']*0.48;
				$data['price_module_9'] = $this->currency->format($this->tax->calculate($product_info['price']*0.48, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_10_int'] = (int)$product_info['price']*0.64;
				$data['price_module_10'] = $this->currency->format($this->tax->calculate($product_info['price']*0.64, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_11_int'] = (int)$product_info['price']*0.44;
				$data['price_module_11'] = $this->currency->format($this->tax->calculate($product_info['price']*0.44, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_12_int'] = (int)$product_info['price']*0.65;
				$data['price_module_12'] = $this->currency->format($this->tax->calculate($product_info['price']*0.65, $product_info['tax_class_id'], $this->config->get('config_tax')));

				$data['price_module_13_int'] = (int)$product_info['price']*0.86;
				$data['price_module_13'] = $this->currency->format($this->tax->calculate($product_info['price']*0.86, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_14_int'] = (int)$product_info['price']*0.6;
				$data['price_module_14'] = $this->currency->format($this->tax->calculate($product_info['price']*0.6, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_15_int'] = (int)$product_info['price']*0.51;
				$data['price_module_15'] = $this->currency->format($this->tax->calculate($product_info['price']*0.51, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_16_int'] = (int)$product_info['price']*0.49;
				$data['price_module_16'] = $this->currency->format($this->tax->calculate($product_info['price']*0.49, $product_info['tax_class_id'], $this->config->get('config_tax')));

				$data['price_module_17_int'] = (int)$product_info['price']*0.78;
				$data['price_module_17'] = $this->currency->format($this->tax->calculate($product_info['price']*0.78, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_18_int'] = (int)$product_info['price']*0.48;
				$data['price_module_18'] = $this->currency->format($this->tax->calculate($product_info['price']*0.48, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_module_19_int'] = (int)$product_info['price']*0.74;
				$data['price_module_19'] = $this->currency->format($this->tax->calculate($product_info['price']*0.74, $product_info['tax_class_id'], $this->config->get('config_tax')));

				/*0,42  0,63  0,5  0,75
				0,43  0,7  0,44  0,68
				0,48  0,64  0,44 0,65
				0,86  0,6  0,51  0,49
				0,78  0,48  0,74*/


				//$data['tax_class_id'] = $product_info['tax_class_id'];
				 //$data['config_tax'] = $this->config->get('config_tax');

				$data['price_got_int'] = (int)$product_info['price']*3.5;
				//$data['price_ras'] = $this->currency->format($this->tax->calculate($product_info['price']*3.5*0.6/6, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['price_ras'] = $this->currency->format($this->tax->calculate($product_info['price']*3*1.5/2/6, $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['predoplata'] = $this->currency->format($this->tax->calculate($product_info['price']*3.5/2, $product_info['tax_class_id'], $this->config->get('config_tax')));

			} else {
				$data['price'] = false;
				$data['price_got'] = false;
				$data['price_ras'] = false;
			}
			$data['price_int'] = (int)$product_info['price'];

			if ((float)$product_info['special']) {
				$data['special'] = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$data['special'] = false;
			}

			if ($this->config->get('config_tax')) {
				$data['tax'] = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price']);
			} else {
				$data['tax'] = false;
			}

			$discounts = $this->model_catalog_product->getProductDiscounts($this->request->get['product_id']);

			$data['discounts'] = array();

			foreach ($discounts as $discount) {
				$data['discounts'][] = array(
					'quantity' => $discount['quantity'],
					'price'    => $this->currency->format($this->tax->calculate($discount['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))
				);
			}

			$data['options'] = array();

			foreach ($this->model_catalog_product->getProductOptions($this->request->get['product_id']) as $option) {
				$product_option_value_data = array();

				foreach ($option['product_option_value'] as $option_value) {
					if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
						if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
							$price = $this->currency->format($this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax') ? 'P' : false));
						} else {
							$price = false;
						}

						$product_option_value_data[] = array(
							'product_option_value_id' => $option_value['product_option_value_id'],
							'option_value_id'         => $option_value['option_value_id'],
							'name'                    => $option_value['name'],
							'image'                   => $this->model_tool_image->resize($option_value['image'], 50, 50),
							'price'                   => $price,
							'price_prefix'            => $option_value['price_prefix']
						);
					}
				}

				$data['options'][] = array(
					'product_option_id'    => $option['product_option_id'],
					'product_option_value' => $product_option_value_data,
					'option_id'            => $option['option_id'],
					'name'                 => $option['name'],
					'type'                 => $option['type'],
					'value'                => $option['value'],
					'required'             => $option['required']
				);
			}

			if ($product_info['minimum']) {
				$data['minimum'] = $product_info['minimum'];
			} else {
				$data['minimum'] = 1;
			}

			$data['review_status'] = $this->config->get('config_review_status');

			if ($this->config->get('config_review_guest') || $this->customer->isLogged()) {
				$data['review_guest'] = true;
			} else {
				$data['review_guest'] = false;
			}

			if ($this->customer->isLogged()) {
				$data['customer_name'] = $this->customer->getFirstName() . '&nbsp;' . $this->customer->getLastName();
			} else {
				$data['customer_name'] = '';
			}

			$data['reviews'] = sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']);
			$data['rating'] = (int)$product_info['rating'];

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$data['captcha'] = $this->load->controller('captcha/' . $this->config->get('config_captcha'));
			} else {
				$data['captcha'] = '';
			}

			$data['attribute_groups'] = $this->model_catalog_product->getProductAttributes($this->request->get['product_id']);


			$data['recurrings'] = $this->model_catalog_product->getProfiles($this->request->get['product_id']);

			$this->model_catalog_product->updateViewed($this->request->get['product_id']);

			$ww= 154;
			$hh = 207;


			if ($product_info['template']=='0') {
				// если шаблон по умолчанию (кухни)
				$this->load->model('design/banner');

				// Фасады Массив Дуба
				$data['dop3'] = array();
				$results = $this->model_design_banner->getBanner(16);
				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['dop3'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}

				// Фасады Эмаль рубашка
				$data['fasady_emal_r'] = array();
				$results = $this->model_design_banner->getBanner(10);
				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['fasady_emal_r'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}

				// Фасады Эмаль без рубашки
				$data['fasady_emal_br'] = array();
				$results = $this->model_design_banner->getBanner(11);
				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['fasady_emal_br'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}

				// Эмаль Глухие
				$data['fasady_emal_g'] = array();
				$results = $this->model_design_banner->getBanner(12);
				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['fasady_emal_g'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}
				// Пластик фасады
				$data['fasady_plastik'] = array();
				$results = $this->model_design_banner->getBanner(13);
				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['fasady_plastik'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}


				// Столешницы
				$data['stol'] = array();
				$results = $this->model_design_banner->getBanner(14);
				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['stol'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}

				// Аксессуары
				$data['access'] = array();
				$results = $this->model_design_banner->getBanner(15);

				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['access'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}
				// Декор
				$data['dekor'] = array();
				$results = $this->model_design_banner->getBanner(19);

				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['dekor'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}

				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "colors_ral");
				$data['colors_tabs'] = array();
				$data['colors'] = array();
				$id_ton = 0;
				foreach ($query->rows as $key => $value) {


					if($value['id_ton'] != $id_ton) {
						$id_ton = $value['id_ton'];
						if( $value['name_ton_en']=='yellow'){
							$bgrbg = '255-255-51';
						} elseif( $value['name_ton_en']=='orange'){
							$bgrbg = '255-117-20';
						} elseif( $value['name_ton_en']=='red'){
							$bgrbg = '248-0-0';
						} elseif( $value['name_ton_en']=='purple'){
							$bgrbg = '204-51-204';
						} elseif( $value['name_ton_en']=='blue'){
							$bgrbg = '34-113-179';
						} elseif( $value['name_ton_en']=='green'){$bgrbg = '34-166-57';
						} elseif( $value['name_ton_en']=='gray'){$bgrbg = '192-192-192';
						} elseif( $value['name_ton_en']=='brown'){$bgrbg = '166-94-46';
						} elseif( $value['name_ton_en']=='black_and_white'){$bgrbg = '255-255-255';

						}
						$bgrbg = explode('-', $bgrbg);

						$data['colors_tabs'][$id_ton] = array(
							'id_ton' => $value['id_ton'],
							'bg' => $value['bg'],
							'bgrbg' => $bgrbg,

							'name_ton_ru' => $value['name_ton_ru'],
							'name_ton_en' => $value['name_ton_en']
							);
					}

					$rgba = explode('-', $value['color_rgb']);
					$data['colors_tabs'][$id_ton]['colors'][] = array(
						'id_ton' => $value['id_ton'],
						'color' => $value['color'],
						'rgba' => $rgba,
						'name_ton_ru' => $value['name_ton_ru'],
						'name_ton_en' => $value['name_ton_en'],
						'name_rall' => $value['name_rall'],
						'color_h' => $value['color_h'],
						//'name_en' => $value['name_en'],
						'name_ru' => $value['name_ru'],
						'comment_ru' => $value['comment_ru']
						);
				}

				/*$colors_id = array(
					'1' => 'yellow',
					'2' => 'orange',
					'3' => 'red',
					'4' => 'purple',
					'5' => 'blue',
					'6' => 'green',
					'7' => 'gray',
					'8' => 'brown',
					'9' => 'black_and_white',
					);*/

				$data['fasag_png'] = array();
				$data['fasag_png'] = array(
					'0' => array(
						'name' => 'Бергонца',
						'bg' => 'images/fasady_png/0/bergonica.jpg'
						),
					'1' => array(
						'name' => 'Берта',
						'bg' => 'images/fasady_png/1/berta.jpg'
						),
					'2' => array(
						'name' => 'Верона',
						'bg' => 'images/fasady_png/2/verona.jpg'
						),
					'3' => array(
						'name' => 'Диана',
						'bg' => 'images/fasady_png/3/diana.jpg'
						),
					'4' => array(
						'name' => 'Диона',
						'bg' => 'images/fasady_png/4/diona.jpg'
						),
					'5' => array(
						'name' => 'карина',
						'bg' => 'images/fasady_png/5/karina.jpg'
						),
					'6' => array(
						'name' => 'Луизиана',
						'bg' => 'images/fasady_png/6/luiziana.jpg'
						),
					'7' => array(
						'name' => 'Модерн',
						'bg' => 'images/fasady_png/7/modern.jpg'
						),
					'8' => array(
						'name' => 'Рузана',
						'bg' => 'images/fasady_png/8/ruzana.jpg'
						),
					'9' => array(
						'name' => 'Серена',
						'bg' => 'images/fasady_png/9/serena.jpg'
						)
					);

			} elseif ($product_info['template']=='1') {
				// если шаблон 1 (столы стулья, аксессуары)

				$this->load->model('design/banner');

				// Стулья ткани
				$data['stul_tkany'] = array();
				$results = $this->model_design_banner->getBanner(17);
				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['stul_tkany'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}
				// Стулья цвета
				$data['stul_color'] = array();
				$results = $this->model_design_banner->getBanner(18);
				foreach ($results as $result) {
					if (is_file(DIR_IMAGE . $result['image'])) {
						$data['stul_color'][] = array(
							'name' => $result['title'],
							'title'  => $result['title'],
							'title2'  => $result['title2'],
							'description'  => $result['description'],
							//'link'  => $result['link'],
							'thumb' => $this->model_tool_image->resize($result['image'], $ww, $hh),
							'popup' => $result['image']
						);
					}
				}

			}

			$onclick = [
				193 => "Marquiz.showModal('61897094678288003fb63b04')", //Шкафы
				194 => "Marquiz.showModal('6157674f134f7b003fffe2eb')", //Прихожая
				195 => "Marquiz.showModal('618970e1678288003fb63b17')", //Спальня
				196 => "Marquiz.showModal('61897106678288003fb63b1e')", //Детские
				197 => "Marquiz.showModal('6189711dc8ea35003f2607e2')", //Гостиные
				198 => "Marquiz.showModal('618971590faf16003fc99b2d')", //Гардеробные
				199 => "Marquiz.showModal('61897170518fd0003f98a06d')", //Кабинеты
			];

			$data['onclick'] = $onclick[$category_id]??'';

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if ($product_info['template']=='1') {
				//шаблон для столов и стульев
				$this->response->setOutput($this->load->view('default/template/product/product2.tpl', $data));
			} elseif ($product_info['template']=='2') {
				//Шаблон для техники и аксессуаров
				$this->response->setOutput($this->load->view('default/template/product/product3.tpl', $data));
			}else{
				$this->response->setOutput($this->load->view('default/template/product/product.tpl', $data));
			}
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['search'])) {
				$url .= '&search=' . $this->request->get['search'];
			}

			if (isset($this->request->get['tag'])) {
				$url .= '&tag=' . $this->request->get['tag'];
			}

			if (isset($this->request->get['description'])) {
				$url .= '&description=' . $this->request->get['description'];
			}

			if (isset($this->request->get['category_id'])) {
				$url .= '&category_id=' . $this->request->get['category_id'];
			}

			if (isset($this->request->get['sub_category'])) {
				$url .= '&sub_category=' . $this->request->get['sub_category'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/product', $url . '&product_id=' . $product_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
			}
		}
	}

	protected function get_prod($dat,$product_id,$url){
		$products = [];
		$results_quick = $this->model_catalog_product->getProducts($dat,true);

		$data_quick = array();
		foreach ($results_quick as $quick) {
			$data_quick[] = $quick['product_id'];
		}

		unset($results_quick);

		$pr_id = array_search($product_id,$data_quick);

		$pr_prev = array();
		if(isset($data_quick[(int)$pr_id - 1])) {
			$pr_prev[] = $data_quick[(int)$pr_id - 1];
		} elseif(isset($data_quick[(int)$pr_id + 4])) {
			$pr_prev[] = $data_quick[(int)$pr_id + 4];
		}
		if(isset($data_quick[(int)$pr_id - 2])) {
			$pr_prev[] = $data_quick[(int)$pr_id - 2];
		} elseif(isset($data_quick[(int)$pr_id + 5])) {
			$pr_prev[] = $data_quick[(int)$pr_id + 5];
		}
		if(isset($data_quick[(int)$pr_id - 3])) {
			$pr_prev[] = $data_quick[(int)$pr_id - 3];
		} elseif(isset($data_quick[(int)$pr_id + 6])) {
			$pr_prev[] = $data_quick[(int)$pr_id + 6];
		}
		if(isset($data_quick[(int)$pr_id + 1])) {
			$pr_prev[] = $data_quick[(int)$pr_id + 1];
		} elseif(isset($data_quick[(int)$pr_id - 4])) {
			$pr_prev[] = $data_quick[(int)$pr_id - 4];
		}
		if(isset($data_quick[(int)$pr_id + 2])) {
			$pr_prev[] = $data_quick[(int)$pr_id + 2];
		} elseif(isset($data_quick[(int)$pr_id - 5])) {
			$pr_prev[] = $data_quick[(int)$pr_id - 5];
		}
		if(isset($data_quick[(int)$pr_id + 3])) {
			$pr_prev[] = $data_quick[(int)$pr_id + 3];
		} elseif(isset($data_quick[(int)$pr_id - 6])) {
			$pr_prev[] = $data_quick[(int)$pr_id - 6];
		}
		$count = 0;

		foreach ($pr_prev as $idprod) {

			if(isset($products[$idprod])){
				continue;
			}

			if($count>5){
				break;
			}
			$count++;

			$result = $this->model_catalog_product->getProduct($idprod);

			if ($result['image']) {
				//$image = $this->model_tool_image->resize($result['image'], 537, 346,'wh');
				$image = $this->model_tool_image->resize($result['image'], 537, 345,'wh');
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				$price_got = $this->currency->format($this->tax->calculate($result['price']*3.5, $result['tax_class_id'], $this->config->get('config_tax')));
				$price_got_old = $this->currency->format($this->tax->calculate($result['price']*3.6*1.3, $result['tax_class_id'], $this->config->get('config_tax')));
				$price_got_new = $this->currency->format($this->tax->calculate($result['price']*3.6*1.3*0.8, $result['tax_class_id'], $this->config->get('config_tax')));
				$price_ras = $this->currency->format($this->tax->calculate($result['price']*3.5*0.6/6, $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}

			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}

			$products[$result['product_id']] = array(
				'product_id'  => $result['product_id'],
				'thumb'       => $image,
				'name'        => $result['name'],
				'fasad'        => $result['fasad'],
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
				'price'       => $price,
				'price_got'       => $price_got,
				'proce_got_old'   => $price_got_old,
				'price_got_new'   => $price_got_new,
				'price_ras'       => $price_ras,
				'special'     => $special,
				//'tax'         => $tax,
				'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
				//'rating'      => $result['rating'],
				'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
			);

		}
		return $products;
	}

	public function review() {
		$this->load->language('product/product');

		$this->load->model('catalog/review');

		$data['text_no_reviews'] = $this->language->get('text_no_reviews');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['reviews'] = array();

		$review_total = $this->model_catalog_review->getTotalReviewsByProductId($this->request->get['product_id']);

		$results = $this->model_catalog_review->getReviewsByProductId($this->request->get['product_id'], ($page - 1) * 5, 5);

		foreach ($results as $result) {
			$data['reviews'][] = array(
				'author'     => $result['author'],
				'text'       => nl2br($result['text']),
				'rating'     => (int)$result['rating'],
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$pagination = new Pagination();
		$pagination->total = $review_total;
		$pagination->page = $page;
		$pagination->limit = 5;
		$pagination->url = $this->url->link('product/product/review', 'product_id=' . $this->request->get['product_id'] . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($review_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($review_total - 5)) ? $review_total : ((($page - 1) * 5) + 5), $review_total, ceil($review_total / 5));

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/review.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/review.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/product/review.tpl', $data));
		}
	}

	public function write() {
		$this->load->language('product/product');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
				$json['error'] = $this->language->get('error_name');
			}

			if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
				$json['error'] = $this->language->get('error_text');
			}

			if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('captcha/' . $this->config->get('config_captcha') . '/validate');

				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('catalog/review');

				$this->model_catalog_review->addReview($this->request->get['product_id'], $this->request->post);

				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function getRecurringDescription() {
		$this->language->load('product/product');
		$this->load->model('catalog/product');

		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}

		if (isset($this->request->post['recurring_id'])) {
			$recurring_id = $this->request->post['recurring_id'];
		} else {
			$recurring_id = 0;
		}

		if (isset($this->request->post['quantity'])) {
			$quantity = $this->request->post['quantity'];
		} else {
			$quantity = 1;
		}

		$product_info = $this->model_catalog_product->getProduct($product_id);
		$recurring_info = $this->model_catalog_product->getProfile($product_id, $recurring_id);

		$json = array();

		if ($product_info && $recurring_info) {
			if (!$json) {
				$frequencies = array(
					'day'        => $this->language->get('text_day'),
					'week'       => $this->language->get('text_week'),
					'semi_month' => $this->language->get('text_semi_month'),
					'month'      => $this->language->get('text_month'),
					'year'       => $this->language->get('text_year'),
				);

				if ($recurring_info['trial_status'] == 1) {
					$price = $this->currency->format($this->tax->calculate($recurring_info['trial_price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')));
					$trial_text = sprintf($this->language->get('text_trial_description'), $price, $recurring_info['trial_cycle'], $frequencies[$recurring_info['trial_frequency']], $recurring_info['trial_duration']) . ' ';
				} else {
					$trial_text = '';
				}

				$price = $this->currency->format($this->tax->calculate($recurring_info['price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')));

				if ($recurring_info['duration']) {
					$text = $trial_text . sprintf($this->language->get('text_payment_description'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				} else {
					$text = $trial_text . sprintf($this->language->get('text_payment_cancel'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
				}

				$json['success'] = $text;
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function getstol($category_id=134,$sort='p.sort_order',$url='',$path='') {
		//134 - Столы и стулья
		if (isset($this->request->post['page'])) {
			$page = $this->request->post['page'];
		} else {
			$page = 1;
		}
		if (isset($this->request->post['sort'])) {
			$page = $this->request->post['sort'];
		}

		if (isset($this->request->post['json'])) {
			$json = $this->request->post['json'];
			if (isset($this->request->post['category_id'])) {
				$category_id = $this->request->post['category_id'];
			} else {
				$category_id=134;
			}
		} else {
			$json = false;
		}

		$limit = 8;
		$products = array();
		$dat = array(
			'filter_category_id' => $category_id,
			'sort'               => $sort,
			'order'              => 'ASC',
			'start'              => ($page - 1) * $limit,
			'limit'              => $limit
			//'random'              => true
		);
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$results = $this->model_catalog_product->getProducts($dat);

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				//$image = $this->model_tool_image->resize($result['image'], 537, 346,'wh');
				//$image = $this->model_tool_image->resize($result['image'], 537, 345,'w');
				//$image = $this->model_tool_image->resize($result['image'], 537, 345);
				$image = $this->model_tool_image->resize($result['image'], 254,163);
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				$price_plus_30proc = $this->currency->format($this->tax->calculate($result['price']*1.3, $result['tax_class_id'], $this->config->get('config_tax')));
				$price_minus_10proc = $this->currency->format($this->tax->calculate($result['price']*0.9, $result['tax_class_id'], $this->config->get('config_tax')));
				$price_got = $this->currency->format($this->tax->calculate($result['price']*3.5, $result['tax_class_id'], $this->config->get('config_tax')));
				$price_ras = $this->currency->format($this->tax->calculate($result['price']*3.5*0.6/6, $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}

			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}
			$products[$result['product_id']] = array(
				'product_id'  => $result['product_id'],
				'thumb'       => $image,
				'name'        => $result['name'],
				'template'        => $result['template'],
				'new'        => $result['new'],
				'fasad'        => $result['fasad'],
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
				'price'       => $price,
				'price_plus_30proc'       => $price_plus_30proc,
				'price_minus_10proc'       => $price_minus_10proc,
				'price_got'       => $price_got,
				'price_ras'       => $price_ras,
				'special'     => $special,
				'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
				'href'        => $this->url->link('product/product', $path . '&product_id=' . $result['product_id'] . $url)
			);

		}
		if(!$json){
			return $products;
		}else{
			$data['products'] = $products;
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/owl_template.tpl')) {
				$json = $this->load->view($this->config->get('config_template') . '/template/product/owl_template.tpl', $data);
			} else {
				$json = $this->load->view('default/template/product/owl_template.tpl', $data);
			}

			//$json = array();

			$this->response->addHeader('Content-Type: application/json');
			$this->response->setOutput(json_encode($json));
		}
	}

	public function getProductCalc() {
		$this->language->load('product/product');
		$this->load->model('catalog/product');

		if (isset($this->request->get['product_id'])) {
			$product_id = (int)$this->request->get['product_id'];
		} else {
			$product_id = 0;
		}

		$product_info = $this->model_catalog_product->getProduct($product_id);

		$json = array();

		if ($product_info ) {

			$this->load->model('tool/image');

			$data['heading_title'] = $product_info['name'];
			$data['model'] = $product_info['model'];

			if ($product_info['image']) {
				$data['image'] = $this->model_tool_image->resize($product_info['image'], 415, 260,'wh');
			} else {
				$data['image'] = $this->model_tool_image->resize('placeholder.png', 415, 260);
			}
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$data['price'] = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				$data['intprice'] = (int)$product_info['price'];
			} else {
				$data['price'] = false;
				$data['intprice'] = 0;
			}
			if ((float)$product_info['special']) {
				$data['special'] = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$data['special'] = false;
			}

			$data['href'] = $this->url->link('product/product', '&product_id=' . $product_info['product_id']);

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/calc_catalog.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/calc_catalog.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/product/calc_catalog.tpl', $data));
			}
		}

	}
}
