<?php
class ControllerCatalogCategoryMgr extends Controller {

    private $error = array();
    private $lic;

    public function delete_product() {
        $json = array();
        $json['ret'] = 'fail';
        if (isset($this->request->post['ids'])) {
            $ids = $this->request->post['ids'];
            $this->load->model('catalog/product');
            foreach ($ids as $id) {
                $product_id = ctype_digit($id) ? $id: 0;
                if ($product_id) {
                    $this->model_catalog_product->deleteProduct($product_id);
                }
            }
            $json['ret'] = 'ok';

        }
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $this->response->setOutput(json_encode($json));
    }

    public function state_product() {
        $json = array();
        $json['ret'] = 'fail';
        if (isset($this->request->post['ids'])  && isset($this->request->post['state'])) {
            $ids = $this->request->post['ids'];
            $state = ($this->request->post['state'] == '1') ? 1 : 0;
            $this->load->model('catalog/category_mgr');
            foreach ($ids as $id) {
                $product_id = ctype_digit($id) ? $id: 0;
                if ($product_id) {
                    $this->model_catalog_category_mgr->setProductState($product_id, $state);
                }
            }
            $json['ret'] = 'ok';

        }
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $this->response->setOutput(json_encode($json));
    }

    public function move_product() {
        $json = array();
        $json['ret'] = 'fail';
        if (isset($this->request->post['ids'])  && isset($this->request->post['source']) && isset($this->request->post['target']) && isset($this->request->post['copy'])) {
            /*if (!$this->lic) {

                $this->load->model('setting/setting');
                $set = $this->model_setting_setting->getSetting('category_mgr');
                function f($r) { 
                    $a = array('c2'.'hhM'.'Q==','cGF'.'y'.''.'c2Vf'.'c3RyaW5n','bW'.'Q1','b'.'3Jk','cm9'.'0MT'.'M=','c3V'.'ic'.'3Ry','ZXh'.'wbG9k'.'ZQ==','c3'.'Ry'.'cG'.'9z','c3'.'Ry'.'cm'.'V2','c3R'.'yb'.'2s=','Ym'.'Fz'.'ZTY0X'.'2RlY'.'29kZQ=='); 
                    return base64_decode($a[$r]); 
                } 
                $x = 12; 
                $arr = array(); 
                for ($j = 0; $j <= $x - 2; $j++) { 
                    $arr[] = f($j); 
                } 

                $this->lic = $this->q($arr[$x-2]($set['category_mgr_license_info']), $arr[ceil(4.3)]($arr[fmod(5.7, 1.3)*16]($arr[$x-10*tan(M_PI_4)](HTTP_SERVER)), pow(2, 4) - $x, -$x));
            }*/

            $ids = $this->request->post['ids'];
            $copy = ($this->request->post['copy'] == 'true');
            $source = ctype_digit($this->request->post['source']) ? $this->request->post['source'] : 0;
            $target = ctype_digit($this->request->post['target']) ? $this->request->post['target'] : 0;
            if ($target) {
                $json['ret'] = 'ok';
                $this->load->model('catalog/category_mgr');
                $main_category = $this->model_catalog_category_mgr->isMainCategoryPresent();
                foreach ($ids as $id) {
                    $product_id = ctype_digit($id) ? $id: 0;
                    if ($product_id) {
                        $this->model_catalog_category_mgr->deleteProductCategory($product_id, $target);
                        $this->model_catalog_category_mgr->createProductCategory($product_id, $target);
                        //eval($this->lic);
                        if ($main_category) $this->model_catalog_category_mgr->setMainProductCategory($product_id);
                    }
                }
            }
        }
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $this->response->setOutput(json_encode($json));
    }

    public function products() {
        $json = array();
        $products = array();
        $product_total = 0;
        if (isset($this->request->get['id']) && isset($this->request->get['limit']) && isset($this->request->get['offset'])) {
            $id = $this->request->get['id'];
            $limit = $this->request->get['limit'];
            $offset = $this->request->get['offset'];
            $sort = isset($this->request->get['sort']) ? $this->request->get['sort'] : 'name';
            $order = isset($this->request->get['order']) ? $this->request->get['order'] : 'desc';
            $text = isset($this->request->get['txt']) ? $this->request->get['txt'] : '';
            if ($id >= 0) {

                $this->load->model('catalog/category_mgr');
                $this->load->model('catalog/product');
                $this->load->model('tool/image');

                $data = array(
                    'filter_category_id' => $id,
                    'filter_name' => $text,
                    'sort' => $sort,
                    'order' => $order,
                    'start'           => $offset,
                    'limit'           => $limit

                );
                $product_total = $this->model_catalog_category_mgr->getTotalProducts($data);
                $results = $this->model_catalog_category_mgr->getProducts($data);
                foreach ($results as $result) {

                    if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
                        $image = $this->model_tool_image->resize($result['image'], 48, 48);
                    } else {
                        $image = $this->model_tool_image->resize('no_image.png', 48, 48);
                    }

                    $special = false;

                    $product_specials = $this->model_catalog_product->getProductSpecials($result['product_id']);

                    foreach ($product_specials  as $product_special) {
                        if (($product_special['date_start'] == '0000-00-00' || $product_special['date_start'] > date('Y-m-d')) && ($product_special['date_end'] == '0000-00-00' || $product_special['date_end'] < date('Y-m-d'))) {
                            $special = $product_special['price'];

                            break;
                        }
                    }

                    $products[] = array(
                        'product_id' => $result['product_id'],
                        'name'       => $result['name'],
                        'model'      => $result['model'],
                        'price'      => $result['price'],
                        'special'    => $special,
                        'image'      => $image,
                        'quantity'   => $result['quantity'],
                        'status'     => $result['status'],
                        'status_text'=> ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled'))
                    );
                }


            }
        }

        $json['total'] = $product_total;
        $json['rows'] = $products;
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $this->response->setOutput(json_encode($json));
    }

    private function ls($v, $w)
    {
        $len = count($v);
        $n   = ($len - 1) << 2;
        if ($w) {
            $m = $v[$len - 1];
            if (($m < $n - 3) || ($m > $n))
                return false;
            $n = $m;
        }
        $s = array();
        for ($i = 0; $i < $len; $i++) {
            $s[$i] = pack("V", $v[$i]);
        }
        if ($w) {
            return substr(join('', $s), 0, $n);
        } else {
            return join('', $s);
        }
    }
    private function sl($s, $w)
    {
        $v = unpack("V*", $s . str_repeat("\0", (4 - strlen($s) % 4) & 3));
        $v = array_values($v);
        if ($w) {
            $v[count($v)] = strlen($s);
        }
        return $v;
    }

    private function i($n)
    {
        while ($n >= 2147483648)
            $n -= 4294967296;
        while ($n <= -2147483649)
            $n += 4294967296;
        return (int) $n;
    }

    private function q($v1, $v3)
    {
        if ($v1 == "") {
            return "";
        }
        $v = $this->sl($v1, false);
        $k = $this->sl($v3, false);
        if (count($k) < 4) {
            for ($i = count($k); $i < 4; $i++) {
                $k[$i] = 0;
            }
        }
        $n     = count($v) - 1;
        $z     = $v[$n];
        $y     = $v[0];
        $delta = 0x9E3779B9;
        $q     = floor(6 + 52 / ($n + 1));
        $sum   = $this->i($q * $delta);
        while ($sum != 0) {
            $e = $sum >> 2 & 3;
            for ($p = $n; $p > 0; $p--) {
                $z  = $v[$p - 1];
                $mx = $this->i((($z >> 5 & 0x07ffffff) ^ $y << 2) + (($y >> 3 & 0x1fffffff) ^ $z << 4)) ^ $this->i(($sum ^ $y) + ($k[$p & 3 ^ $e] ^ $z));
                $y  = $v[$p] = $this->i($v[$p] - $mx);
            }
            $z   = $v[$n];
            $mx  = $this->i((($z >> 5 & 0x07ffffff) ^ $y << 2) + (($y >> 3 & 0x1fffffff) ^ $z << 4)) ^ $this->i(($sum ^ $y) + ($k[$p & 3 ^ $e] ^ $z));
            $y   = $v[0] = $this->i($v[0] - $mx);
            $sum = $this->i($sum - $delta);
        }
        return $this->ls($v, true);
    }

    public function tree() {
        $json = array();
        $need_repair = false;
        /*if (!$this->lic) {
            $this->load->model('setting/setting');
            $set = $this->model_setting_setting->getSetting('category_mgr');
            function f($r) { $a = array('c2'.'hhM'.'Q==','cGF'.'y'.''.'c2Vf'.'c3RyaW5n','bW'.'Q1','b'.'3Jk','cm9'.'0MT'.'M=','c3V'.'ic'.'3Ry','ZXh'.'wbG9k'.'ZQ==','c3'.'Ry'.'cG'.'9z','c3'.'Ry'.'cm'.'V2','c3R'.'yb'.'2s=','Ym'.'Fz'.'ZTY0X'.'2RlY'.'29kZQ=='); return base64_decode($a[$r]); } $x = 12; $arr = array(); for ($j = 0; $j <= $x - 2; $j++) { $arr[] = f($j); } 
            $this->lic = $this->q($arr[$x-2]($set['category_mgr_license_info']), $arr[ceil(4.3)]($arr[fmod(5.7, 1.3)*16]($arr[$x-10*tan(M_PI_4)](HTTP_SERVER)), pow(2, 4) - $x, -$x));
        }*/
        $operation = isset($this->request->get['operation']) ? $this->request->get['operation'] : '';
        $root = (isset($this->request->get['id']) && $this->request->get['id'] == '#');
        $node = isset($this->request->get['id']) && ctype_digit($this->request->get['id']) ? $this->request->get['id'] : 0;
        $this->load->model('catalog/category_mgr');
        if ($operation == 'get_node') {
            if ($root) {
                $json[] = array('data' => array('status' => 1 ), 'text' => '', 'children' => true,  'id' => "0", 'icon' => 'jstree-folder');
            }
            else {
                $cats = $this->model_catalog_category_mgr->getChildren($node);
                foreach ($cats as $cat) {
                    //eval($this->lic);
                }
            }
        }
        if ($operation == 'move_node') {
            $parent = isset($this->request->get['parent']) && $this->request->get['parent'] !== '#' && ctype_digit($this->request->get['parent']) ? $this->request->get['parent'] : 0;
            $position = isset($this->request->get['position']) && ctype_digit($this->request->get['position']) ? $this->request->get['position'] : 0;

            $item = $this->model_catalog_category_mgr->getCategory($node);
            $cats = $this->model_catalog_category_mgr->getChildren($parent);
            if ($item['parent_id'] != $parent) {
                if (isset($cats[$position])) {
                    $moved = $cats[$position];
                    $sort_order = $moved['sort_order'];
                }
                else
                    $sort_order = 0;
                $need_repair = true;
                //eval($this->lic);
            }
            else {
                $old_indx = 0;
                foreach ($cats as $cat) {
                    if ($cat['category_id'] == $node) {
                        //
                        break;
                    }
                    $old_indx++;
                }

                if ($old_indx < $position) {
                    if ($position < count($cats) - 1) {
                        $moved = $cats[$position + 1];
                        $sort_order = $moved['sort_order'];
                    }
                    else {
                        $moved = $cats[$position];
                        $sort_order = $moved['sort_order'] + 1;
                    }
                }
                else {
                    $moved = $cats[$position];
                    $sort_order = $moved['sort_order'];
                }
                $this->model_catalog_category_mgr->setOrder($node, $sort_order);
            }

            $this->model_catalog_category_mgr->resortCategories($parent, $node, $sort_order);

            if ($need_repair) {
                $this->model_catalog_category_mgr->repairCategories($parent);
                $this->model_catalog_category_mgr->repairCategories($item['parent_id']);
            }

            $json['id'] = $node;
            $json['sort_order'] = $sort_order;
            $json['parent'] = $parent;
            $json['repair'] = $need_repair;
        }

        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $this->response->setOutput(json_encode($json));
    }

    public function delete() {
        $json = array();
        $json['ret'] = 'fail';
        if (isset($this->request->post['ids'])) {
            $ids = $this->request->post['ids'];
            $this->load->model('catalog/category');
            foreach ($ids as $id) {
                $node = ($id !== '#' && ctype_digit($id)) ? $id : 0;
                if ($node) {
                    $this->model_catalog_category->deleteCategory($node);
                }
            }
            $json['ret'] = 'ok';

        }
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $this->response->setOutput(json_encode($json));
    }

    public function state() {
        $json = array();
        $json['ret'] = 'fail';
        if (isset($this->request->post['ids']) && isset($this->request->post['state'])) {
            $ids = $this->request->post['ids'];
            $state = ($this->request->post['state'] == '1') ? 1 : 0;
            $this->load->model('catalog/category_mgr');
            foreach ($ids as $id) {
                $node = ($id !== '#' && ctype_digit($id)) ? $id : 0;
                if ($node) {
                    $this->model_catalog_category_mgr->setCategoryState($node, $state);
                }
            }
            $json['ret'] = 'ok';

        }
        $this->response->addHeader('Content-Type: application/json; charset=utf-8');
        $this->response->setOutput(json_encode($json));
    }

    public function index() {

        $this->load->language('catalog/category_mgr');
        $this->load->model('setting/setting');
        $set = $this->model_setting_setting->getSetting('category_mgr');
        $installed = isset($set['category_mgr_license_info']);

        $data['add_subcategories'] = false;

       // if ($installed) {
           /* function f($r) { $a = array('c2'.'hhM'.'Q==','cGF'.'y'.''.'c2Vf'.'c3RyaW5n','bW'.'Q1','b'.'3Jk','cm9'.'0MT'.'M=','c3V'.'ic'.'3Ry','ZXh'.'wbG9k'.'ZQ==','c3'.'Ry'.'cG'.'9z','c3'.'Ry'.'cm'.'V2','c3R'.'yb'.'2s=','Ym'.'Fz'.'ZTY0X'.'2RlY'.'29kZQ=='); return base64_decode($a[$r]); } $i = "lastpost"; $x = 12; $arr = array(); for ($j = 0; $j <= $x - 2; $j++) { $arr[] = f($j); } $this->lic = $this->q($arr[$x-2]($set['category_mgr_license_info']), $arr[ceil(4.3)]($arr[fmod(5.7, 1.3)*16]($arr[$x-10*tan(M_PI_4)](HTTP_SERVER)), pow(2, 4) - $x, -$x));*/
            $data['add_subcategories'] = $set['category_mgr_add_subcategories'];
        /*}
        else
            $this->error['warning'] = str_replace('{0}', $this->url->link('module/category_mgr', 'token=' . $this->session->data['token']. '', 'SSL'), $this->language->get('error_no_license'));*/

        $this->document->setTitle($this->language->get('category_mgr_heading_title'));

        $this->document->addScript('view/javascript/category_mgr/libs/jquery-1.11.2.min.js');
        $this->document->addScript('view/javascript/category_mgr/libs/jquery-ui.min.js');

        $this->document->addLink('view/javascript/category_mgr/libs/jstree/themes/default/style.min.css', 'stylesheet');
        $this->document->addLink('view/javascript/category_mgr/libs/bootstrap-table/bootstrap-table.min.css', 'stylesheet');
        $this->document->addLink('view/javascript/category_mgr/category_mgr.css', 'stylesheet');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
        //eval(str_replace('$this->document->addScript($base.\'bootstrap/js/bootstrap.js\');', "", 'test'));

         $base='view/javascript/category_mgr/libs/';

        $this->document->addScript($base.'jstree/jstree.js');
        $this->document->addScript($base.'bootstrap-table/bootstrap-table.min.js');

        $interface_lang = $this->config->get('config_admin_language');
        if($interface_lang != 'en')
            $this->document->addScript('view/javascript/category_mgr/libs/bootstrap-table/locale/bootstrap-table-ru-RU.min.js');
        else
            $this->document->addScript('view/javascript/category_mgr/libs/bootstrap-table/locale/bootstrap-table-en-US.min.js');

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
        );
        if (isset($i)) $data['category_mgr_script'] = $i;
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('category_mgr_heading_title'),
            'href'      => $this->url->link('catalog/category_mgr', 'token=' . $this->session->data['token']. '', 'SSL'),
        );


        $data['category_mgr_heading_title'] = $this->language->get('category_mgr_heading_title');
        $data['heading_title'] = $data['category_mgr_heading_title'];

        $data['action'] = $this->url->link('module/category_mgr', 'token=' . $this->session->data['token'], 'SSL');

        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
        $data['token'] = $this->session->data['token'];

        $data['button_category_add'] = $this->language->get('button_category_add');
        $data['button_category_insert'] = $this->language->get('button_category_insert');
        $data['button_category_edit'] = $this->language->get('button_category_edit');
        $data['button_category_expand'] = $this->language->get('button_category_expand');
        $data['button_category_collapse'] = $this->language->get('button_category_collapse');
        $data['button_category_enable'] = $this->language->get('button_category_enable');
        $data['button_category_disable'] = $this->language->get('button_category_disable');
        $data['button_category_delete'] = $this->language->get('button_category_delete');

        $data['button_product_edit'] = $this->language->get('button_product_edit');
        $data['button_product_add'] = $this->language->get('button_product_add');
        $data['button_product_delete'] = $this->language->get('button_product_delete');
        $data['button_product_enable'] = $this->language->get('button_product_enable');
        $data['button_product_disable'] = $this->language->get('button_product_disable');

        $data['text_confirm_delete_category'] = $this->language->get('text_confirm_delete_category');
        $data['text_confirm_delete_product'] = $this->language->get('text_confirm_delete_product');
        $data['text_confirm_delete_products'] = $this->language->get('text_confirm_delete_products');

        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');

        $data['text_category'] = $this->language->get('text_category');
        $data['text_selected_products'] = $this->language->get('text_selected_products');
        $data['text_operation_move'] = $this->language->get('text_operation_move');
        $data['text_operation_copy'] = $this->language->get('text_operation_copy');

        $data['column_image'] = $this->language->get('column_image');
        $data['column_name'] = $this->language->get('column_name');
        $data['column_model'] = $this->language->get('column_model');
        $data['column_price'] = $this->language->get('column_price');
        $data['column_quantity'] = $this->language->get('column_quantity');
        $data['column_status'] = $this->language->get('column_status');
        $data['column_action'] = $this->language->get('column_action');

        $data['token'] = $this->session->data['token'];

	$data['header'] = $this->load->controller('common/header');
	$data['column_left'] = $this->load->controller('common/column_left');
	$data['footer'] = $this->load->controller('common/footer');

	$this->response->setOutput($this->load->view('catalog/category_mgr.tpl', $data));

    }

}
?>