<?php
/**
 * @author Nick M. <webdev.nick@gmail.com>
 * @package welldone_opencart 
 */
 
  class Welldone
  {
    public $css_files;
    public $js_files;
    
    public $tools;
    
    private $settings = array();
    
    public $config;   
    public $oc_config;
    public $minifier;
    
    public $cache;
    
    public $request;
     
    private $layouts = array();   
    
    function __construct($registry,$layouts)
    {
      $this->css_files['header'] = array();
      $this->css_files['footer'] = array();
      $this->js_files['header'] = array();
      $this->js_files['footer'] = array();
      
      $this->oc_config = $registry->get('config');
      $this->request = $registry->get('request');
      
      $this->layouts = $layouts; 
      
    }
    
    public function get_layouts(){
      return $this->layouts; 
    }
    
    public function get_settings($name,$default = null)
    {
      return $this->config->get_cfg($name,$default);   
    }
    
    public function set_settings($name,$value)
    {
      $this->config->set_cfg($name,$value);
    }
    
    public function addJs($js_file,$position = 'header')
    {
      if (!in_array($js_file,$this->js_files[$position]))
        $this->js_files[$position][] = $js_file; 
    }
    
    public function addCss($css_file,$position = 'header')
    {
      if (!in_array($css_file,$this->css_files[$position]))
        $this->css_files[$position][] = $css_file; 
    }
    
    public function js_out($position = 'header')
    {
      $js_files_to_out = isset($this->js_files[$position]) ? $this->js_files[$position] : array();
      
      if ($this->get_settings('minify_js','0') == 1)
      {
        $combined_js = $this->minifier->get_compliled_js_file_path($js_files_to_out);
        echo '<script src="system/welldone/data/cache/minify/'.$combined_js.'"></script>'."\n";
      }
      else
      {
        $content = '';
        foreach($js_files_to_out as $file)
        {
          echo '<script src="'.$file.'"></script>'."\n";
        }
      }
    }
    
    public function css_out($position = 'header')
    {
      $css_files_to_out = isset($this->css_files[$position]) ? $this->css_files[$position] : array();

      $minify_css = 1;
      //if ($this->get_settings('minify_css','0') == 1)
      if ($minify_css == 1)
      {
        $combined_css_style = $this->minifier->get_compliled_css_file_path($css_files_to_out);
        
        echo '<link rel="stylesheet" href="system/welldone/data/cache/minify/'.$combined_css_style.'">'."\n";
      }
      /*else
      {*/
        $content = '';
        foreach($css_files_to_out as $file)
        {
          echo '<link rel="stylesheet" href="'.$file.'">'."\n";
        }
      //}
      //Google fonts
      $fonts = $this->get_settings('settings-fonts-fonts',array());
      foreach($fonts as $font)
      {
        if ($font['font_type'] == 'google')
        {
          $font_name = str_replace(' ','+',$font['goole_font_name']);
          $subsets = isset($font['font_subsets']) ? $font['font_subsets'] : array();
          $variants = isset($font['font_variant']) ? $font['font_variant'] : array();
          if (count($variants))
            $font_name .= ':'.implode(',',$variants);
          
          $font_url = '//fonts.googleapis.com/css?family='.$font_name;
          if (count($subsets))
            $font_url .= '&amp;subset=' . implode(',', $subsets);
          
          echo '<link href="'.$font_url.'" rel="stylesheet" type="text/css">';
        }
      }
    }
    
    public function get_images_path()
    {
      $path = $this->oc_config->get('config_secure') ? HTTP_SERVER : HTTPS_SERVER;
      
      return $path.'image/';
    }
    
    public function get_current_layout_id($store_id)
    {
      $ret = (int)$this->cache->get('welldone_layout_'.$store_id);
      if (!isset($this->layouts[$ret]))
        $ret = 1;
        
      return $ret;
    }
    
    public function custom_meta()
    {
      $store_id = $this->oc_config->get('config_store_id');
      $layout_id = $this->get_current_layout_id($store_id);
      
      $custom_meta = $this->cache->get('custom-meta-'.$store_id.'-'.$layout_id,'');
      
      if ($custom_meta != '')
      {
        $custom_meta = html_entity_decode($custom_meta, ENT_QUOTES, 'UTF-8');
      }
      return $custom_meta;
    }
    
    public function custom_css()
    {
      $store_id = $this->oc_config->get('config_store_id');
      $layout_id = $this->get_current_layout_id($store_id);
      
      $custom_css = $this->cache->get('custom-css-'.$store_id.'-'.$layout_id,'');
      
      if ($this->get_settings('boxed_bg_image') && $this->get_settings('layout_mode') == 'boxed')
      {
        $url = $this->get_images_path().$this->get_settings('boxed_bg_image');
        $custom_css .= 'body.boxed {background: url('.$url.') no-repeat center top fixed;}';
      }
      
      if ($custom_css != '')
      {
        $custom_css = html_entity_decode($custom_css, ENT_QUOTES, 'UTF-8');
        $custom_css = '<style>'.$custom_css.'</style>';
      }
      return $custom_css;
    }
    
    public function custom_js($position = 'header')
    {
      $store_id = $this->oc_config->get('config_store_id');
      $layout_id = $this->get_current_layout_id($store_id);
      
      $custom_js = $this->cache->get('custom-js-'.$position.'-'.$store_id.'-'.$layout_id,'');
      
      if ($custom_js != '')
      {
        $custom_js = html_entity_decode($custom_js, ENT_QUOTES, 'UTF-8');
        $custom_js = '<script type="text/javascript">'.$custom_js.'</script>';
      }
      return $custom_js;
    }
    
    public function is_admin()
    {
      return (defined('HTTP_CATALOG'));
    }
    
    public function is_home_page()
    {
      $route = isset($this->request->get['route']) ? $this->request->get['route'] : 'common/home';
      
      return ($route == 'common/home'); 
      
    }
    
  }
  