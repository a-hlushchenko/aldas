<?php
class ControllerInformationInformation extends Controller {
	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {

			if ($information_info['meta_title']) {
				$this->document->setTitle($information_info['meta_title']);
			} else {
				$this->document->setTitle($information_info['title']);
			}

			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);

			$data['breadcrumbs'][] = array(
				'text' => $information_info['title'],
				//'href' => $this->url->link('information/information', 'information_id=' .  $information_id)
				'href' => false
			);

			if ($information_info['meta_h1']) {
				$data['heading_title'] = $information_info['meta_h1'];
			} else {
				$data['heading_title'] = $information_info['title'];
			}

			$data['button_continue'] = $this->language->get('button_continue');

			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if($information_id==4){// о нас
				$this->response->setOutput($this->load->view('default/template/information/html/about.tpl', $data));
			} elseif($information_id==11){//3d
				$this->response->setOutput($this->load->view('default/template/information/html/3d.tpl', $data));
			} elseif($information_id==6){//доставка и сборка
				$this->response->setOutput($this->load->view('default/template/information/html/sborka_dostavka.tpl', $data));
			} elseif($information_id==10){//рассрочка
				$this->response->setOutput($this->load->view('default/template/information/html/kredit.tpl', $data));
			} elseif($information_id==12){
				$this->response->setOutput($this->load->view('default/template/information/html/partner.tpl', $data));
			} else {

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/information.tpl')) {
					$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/information.tpl', $data));
				} else {
					$this->response->setOutput($this->load->view('default/template/information/information.tpl', $data));
				}
			}

			/*if($information_id==4){
				$this->response->setOutput($this->load->view('default/template/information/html/o_nas.tpl', $data));
			} elseif($information_id==6){
				$this->response->setOutput($this->load->view('default/template/information/html/dostavka.tpl', $data));
			} elseif($information_id==9){
				$this->response->setOutput($this->load->view('default/template/information/html/rasrochka.tpl', $data));
			} elseif($information_id==11){
				$this->response->setOutput($this->load->view('default/template/information/html/3d.tpl', $data));
			} elseif($information_id==12){
				$this->response->setOutput($this->load->view('default/template/information/html/sotrudnichestvo.tpl', $data));
			} else {
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/information.tpl')) {
					$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/information.tpl', $data));
				} else {
					$this->response->setOutput($this->load->view('default/template/information/information.tpl', $data));
				}
			}*/
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('information/information', 'information_id=' . $information_id)
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

	public function agree() {
		$this->load->model('catalog/information');

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$output = '';

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			$output .= html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8') . "\n";
		}

		$this->response->setOutput($output);
	}
}