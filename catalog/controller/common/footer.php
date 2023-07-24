<?php
class ControllerCommonFooter extends Controller
{
	public function index()
	{

		// Варианты А-Б

		$this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');

		if (isset($this->request->cookie['variat_abc'])) {
			$var = $this->request->cookie['variat_abc'];
			$data['variat_abc'] = $var;
		} else {
			$this->load->model('setting/setting');

			if ($this->config->get('variat_abc_count')) {
				$count = $this->config->get('variat_abc_count') + 1;
			} else {
				$count = 1;
			}
			if ($count % 3 == 0) {
				$var = 'C';
			} elseif ($count % 2 == 0) {
				$var = 'B';
			} else {
				$var = 'A';
			}
			$data['variat_abc'] = $var;
		}

		$data['config_ga'] = '';
		$data['config_metrika'] = '';


		if ($this->config->get('config_ga')) $data['config_ga'] = $this->config->get('config_ga');
		if ($this->config->get('config_metrika')) $data['config_metrika'] = html_entity_decode($this->config->get('config_metrika'), ENT_QUOTES, 'UTF-8');

		$this->load->language('common/footer');

		//$this->document->addScript('catalog/view/javascript/callback.js');

		$data['scripts'] = $this->document->getScripts();
		$data['styles'] = $this->document->getStyles();
		//$data['scripts'] = $this->document->getScripts('footer');


		$data['contact'] = $this->url->link('information/contact');
		$data['sitemap'] = $this->url->link('information/sitemap');

		$data['categories'] = $this->load->controller('module/categoryfooter');

		if (isset($this->request->get['admin'])) {
			$data['admin'] = true;
		} else {
			$data['admin'] = false;
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
}
