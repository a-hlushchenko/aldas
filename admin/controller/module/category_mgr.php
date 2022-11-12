<?php
class ControllerModuleCategoryMgr extends Controller {

    private $error = array();

    public function index() {
        $this->load->language('module/category_mgr');

        $this->document->setTitle(strip_tags($this->language->get('heading_title')));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

            $this->model_setting_setting->editSetting('category_mgr', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('catalog/category_mgr', 'token=' . $this->session->data['token'], 'SSL'));
        }

        $text_strings = array(
            'heading_title',
            'button_save',
            'button_cancel',
            'button_open',
            'text_yes',
            'text_no',
            'text_license_name',
            'text_license_id',
            'text_license_info',
            'text_add_subcategories',
            'text_license_id_hint',
            'text_license_info_hint'
        );

        foreach ($text_strings as $text) {
            $data[$text] = $this->language->get($text);
        }

        $this->initField($data, 'category_mgr_license_name', $this->config->get('config_owner'));
        $this->initField($data, 'category_mgr_license_info');
        $this->initField($data, 'category_mgr_add_subcategories', true);
        $data['token'] = $this->session->data['token'];

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
        );

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
        );

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/category_mgr', 'token=' . $this->session->data['token'], 'SSL'),
        );

        $data['action'] = $this->url->link('module/category_mgr', 'token=' . $this->session->data['token'], 'SSL');

        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

	$data['header'] = $this->load->controller('common/header');
	$data['column_left'] = $this->load->controller('common/column_left');
	$data['footer'] = $this->load->controller('common/footer');

	$this->response->setOutput($this->load->view('module/category_mgr.tpl', $data));
    }

    public function license() {
        $json = array();
        $json['id'] = '';
        if (isset($this->request->post['license_name'])) {
            $lic_name = trim(strip_tags($this->request->post['license_name']));
            $json['id'] = base64_encode('['.md5(HTTP_SERVER).'|'.substr($lic_name, 0, 8).']');
            $json['name'] = $lic_name;
        }
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $this->response->setOutput(json_encode($json));
    }

    private function initField(&$data, $field_name, $default_value = '') {
        if (isset($this->request->post[$field_name])) {
            $data[$field_name] = $this->request->post[$field_name];
        } elseif (!is_null($this->config->get($field_name))) {
            $data[$field_name] = $this->config->get($field_name);
        } else {
            $data[$field_name] = $default_value;
        }
    }
    public function install() {
        $this->load->model('user/user_group');

        $this->model_user_user_group->addPermission($this->user->getId(), 'access', 'catalog/category_mgr');
        $this->model_user_user_group->addPermission($this->user->getId(), 'modify', 'catalog/category_mgr');
    }

    public function uninstall() {
    }

    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/category_mgr')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!(isset($this->request->post['category_mgr_license_info'])) || ($this->request->post['category_mgr_license_info'] == ''))
            $this->error['warning'] = $this->language->get('error_no_license');

        if (!$this->error) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}
?>