<?php
class ControllerCommonHeader extends Controller
{
	public function index()
	{
		$this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');
		/*echo "<pre>";
		print_r($_SERVER);
		echo "</pre>";*/
		header('Strict-Transport-Security: max-age=31536000; includeSubDomains; preload');
		if ($this->config->get('config_redirects')) {

			$redirects = array();
			$redirect_elements = explode(PHP_EOL, $this->config->get('config_redirects'));
			foreach ($redirect_elements as $element) {
				$to = explode("==", $element);
				/*echo "<pre>";
				print_r($to);
				echo "</pre>";*/
				$redirects[$to[0]] = $to[1];
			}

			$server_request = substr($_SERVER["REQUEST_URI"], 1);
			//echo $server_request;
			if ($server_request) {
				if (array_key_exists($server_request, $redirects)) {
					header("HTTP/1.1 301 Moved Permanently");
					$location = HTTP_SERVER . $redirects[$server_request];
					header("Location: " . $location);
					exit;
				}
			}
		}
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('analytics/' . $analytic['code']);
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			//$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
			$this->document->addLink(MAIN_SERVER . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		//$data['styles'] = $this->document->getStyles();
		//$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			////$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
			//$data['logo'] = MAIN_SERVER . 'image/' . $this->config->get('config_logo');
			$data['logo'] = MAIN_SERVER . 'image/logo-aldas.svg';
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');
		//$data['og_url'] = (isset($this->request->server['HTTPS']) ? HTTPS_SERVER : HTTP_SERVER) . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI'])-1));
		$data['og_url'] = HTTP_SERVER . substr($this->request->server['REQUEST_URI'], 1, (strlen($this->request->server['REQUEST_URI']) - 1));
		$data['og_image'] = $this->document->getOgImage();
		$data['og_description'] = $this->document->getDescription();
		$data['og_locale'] = 'ru-RU';

		$data['text_home'] = $this->language->get('text_home');


		$data['text_account'] = $this->language->get('text_account');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_page'] = $this->language->get('text_page');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['register'] = $this->url->link('account/register', '', 'SSL');
		$data['login'] = $this->url->link('account/login', '', 'SSL');
		$data['logout'] = $this->url->link('account/logout', '', 'SSL');

		$status = true;

		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", str_replace(array("\r\n", "\r"), "\n", trim($this->config->get('config_robots'))));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}

		$data['categories'] = $this->load->controller('module/categoryheader');

		$data['categories_mobile'] = $this->load->controller('module/categoryheadermobile');

		if (isset($this->request->get['search'])) {
			$data['search'] = $this->request->get['search'];
		} else {
			$data['search'] = '';
		}

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		$data['store_id'] = $this->config->get('config_store_id');


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/header.tpl', $data);
		} else {
			return $this->load->view('default/template/common/header.tpl', $data);
		}
	}
}
