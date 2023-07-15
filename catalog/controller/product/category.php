<?php
class ControllerProductCategory extends Controller {
	public function index() {

		// Варианты А-Б

		/*if (isset($this->request->cookie['variat_abc'])) {
			$var = $this->request->cookie['variat_abc'];
			$this->session->data['variat_abc'] = $var;
			setcookie('variat_abc', $var, time() +  60 * 60 * 24 * 30, '/');
			$data['variat_abc'] = $var;
		} else {
			$this->load->model('setting/setting');

			if($this->config->get('variat_abc_count')) {
				$count = $this->config->get('variat_abc_count')+1;
			} else {
				$count = 1;
			}

			$this->model_setting_setting->editSetting('variat_abc',array('variat_abc_count'=>$count));

			$ost = $count%3;

			if($ost==2){
				$var='A';
				//$data['variat_abc'] ='два в ряд';
			} else {
				$var='B';
				//$data['variat_abc'] ='три в ряд';
			}
			setcookie('variat_abc', $var, time() +  60 * 60 * 24 * 30, '/');
			$data['variat_abc'] = $var;

			//$this->log->write(print_r($count . ' - ставим вариант '. $var,1));
		}*/

		// Ajax Product Page Loader by Wadamir
		/*$this->document->addScript('catalog/view/javascript/ajax-product-page-loader.js?v1');

		$this->load->model('setting/setting');
		$current_language_id = $this->config->get('config_language_id');
		$data['loadmore_button'] = $this->config->get('loadmore_button_name_'.$current_language_id);
		$data['loadmore_status'] = $this->config->get('loadmore_status');
		$data['loadmore_style'] = $this->config->get('loadmore_style');
		$data['loadmore_arrow_status'] = $this->config->get('loadmore_arrow_status');*/
		// Ajax Product Page Loader by Wadamir


		$this->load->language('product/category');

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_product_limit');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['path'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);

			$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}

				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path . $url)
					);
				}
			}
		} else {
			$category_id = 0;
		}

		$category_info = $this->model_catalog_category->getCategory($category_id);

		if ($category_info) {

			if ($category_info['meta_title']) {
				$this->document->setTitle($category_info['meta_title']);
			} else {
				$this->document->setTitle($category_info['name']);
			}

			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);

			if ($category_info['meta_h1']) {
				$data['heading_title'] = $category_info['meta_h1'];
			} else {
				$data['heading_title'] = $category_info['name'];
			}

			if($this->config->get('config_city')){
				$data['heading_title'] .= ' '.morpher_inflect($this->config->get('config_city'),'gde');
			}

			$data['text_refine'] = $this->language->get('text_refine');
			$data['text_empty'] = $this->language->get('text_empty');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_price'] = $this->language->get('text_price');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['text_sort'] = $this->language->get('text_sort');
			$data['text_limit'] = $this->language->get('text_limit');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['button_list'] = $this->language->get('button_list');
			$data['button_grid'] = $this->language->get('button_grid');

			// Set the last category breadcrumb
			$data['breadcrumbs'][] = array(
				'text' => $category_info['name'],
				//'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'])
				'href' => false
			);

			if ($category_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
				$this->document->setOgImage($data['thumb']);
			} else {
				$data['thumb'] = '';
			}

			if($page==1){
				$data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
				$data['short_description'] = html_entity_decode($category_info['short_description'], ENT_QUOTES, 'UTF-8');
			} else {
				$data['description'] = '';
				$data['short_description'] ='';
			}
			$data['compare'] = $this->url->link('product/compare');

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['categories'] = array();

			$results = $this->model_catalog_category->getCategories($category_id);

			foreach ($results as $result) {
				$filter_data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);

				$data['categories'][] = array(
					'name' => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
					'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
				);
			}

			$data['products'] = array();

			$filter_data = array(
				'filter_category_id' => $category_id,
				'filter_filter'      => $filter,
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);


			$partts = explode('_', (string)$this->request->get['path']);

			//$data['placeholder'] = $this->model_tool_image->resize('placehold.png', 571, 325);

			foreach ($results as $result) {

				if ($result['image']) {
					//$image = $this->model_tool_image->resize($result['image'], 537, 346,'wh');

					if(in_array('133', $partts)){
						//$image = $this->model_tool_image->resize($result['image'], 537, 306);
						$image = $this->model_tool_image->resize($result['image'], 385, 269); // 325
						//увеличиваем вручную для експериментов А-Б
						//$image = $this->model_tool_image->resize($result['image'], 1100, 628);
					} else {
						$image = $this->model_tool_image->resize($result['image'], 385, 269,'wh'); //325
						//увеличиваем вручную для експериментов А-Б
						//$image = $this->model_tool_image->resize($result['image'], 1102, 628,'w');
					}
				} else {
					//$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
					$image = $this->model_tool_image->resize('placeholder.png', 385, 269);
				}

				$images = array();
				$images[] = array(
					'popup' => MAIN_SERVER.'image/'.$result['image'],
					'thumb' => $image,
				);
	
				$res = $this->model_catalog_product->getProductImages($result['product_id']);
	
				foreach ($res as $res_) {
					if($res_['image']){
						$images[] = array(
							'popup' => MAIN_SERVER.'image/'.$res_['image'],
							'thumb' => $this->model_tool_image->resize($res_['image'], 385, 269,'wh'),
						);
					}
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
					$price_plus_30proc = $this->currency->format($this->tax->calculate($result['price']*1.3, $result['tax_class_id'], $this->config->get('config_tax')));
					$price_minus_10proc = $this->currency->format($this->tax->calculate($result['price']*0.9, $result['tax_class_id'], $this->config->get('config_tax')));
					$price_got = $this->currency->format($this->tax->calculate($result['price']*3.6, $result['tax_class_id'], $this->config->get('config_tax')));

					$price_got_old = $this->currency->format($this->tax->calculate($result['price']*3.6*1.3, $result['tax_class_id'], $this->config->get('config_tax')));
					$price_got_new = $this->currency->format($this->tax->calculate($result['price']*3.6*1.3*0.8, $result['tax_class_id'], $this->config->get('config_tax')));

					$price_got3 = $this->currency->format($this->tax->calculate($result['price']*3*1.5, $result['tax_class_id'], $this->config->get('config_tax')));
					$price_ras = $this->currency->format($this->tax->calculate($result['price']*3.5*0.6/6, $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				/*if($category_id==27){
					$str = explode(' ', $result['name']);
					$new_name = 'Угловая';
					foreach ($str as $key => $value) {
						if($key==0){
							$new_name .= ' '.mb_strtolower($value);
						} else {
							$new_name .= ' '.$value;
						}
					}
					$result['name'] = $new_name;
				}*/

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'images'       => $images,
					'name'        => $result['name'],
					'template'        => $result['template'],
					'new'        => $result['new'],
					'fasad'        => $result['fasad'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'price_plus_30proc'       => $price_plus_30proc,
					'price_minus_10proc'       => $price_minus_10proc,
					'price_got'       => $price_got,
					'price_got_old'   => $price_got_old,
					'price_got_new'   => $price_got_new,
					'price_got3'       => $price_got3,
					'price_ras'       => $price_ras,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $result['rating'],
					'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			/*$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);*/

			/*$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);*/

			$data['sorts'][] = array(
				'text'  => 'популярности',
				'value' => 'rating-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => 'цене (сначала недорогие)',
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => 'цене (сначала дорогие)',
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => 'новизне',
				'value' => 'p.date_added-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.date_added&order=DESC' . $url)
			);

			/*if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}*/




			/*$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
			);*/

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get('config_product_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');

			$data['pagination'] = $pagination->render();
			$data['product_total'] = $product_total;

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {

			} elseif ($page == 2) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'prev');
			} else {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page - 1), 'SSL'), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'] . '&page='. ($page + 1), 'SSL'), 'next');
			}
			$this->document->addLink($this->url->link('product/category', 'path=' . $category_info['category_id'], 'SSL'), 'canonical');

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$this->document->addScript('catalog/view/javascript/owl.carousel.js');
			$data['news'] = $this->load->controller('module/news_carousel');

			$data['column_left'] = $this->load->controller('common/column_left');
			//$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

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


			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/product/category.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/product/category.tpl', $data));
			}
		} else {
			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
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
				'href' => $this->url->link('product/category', $url)
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
}
