<?php
/**
 * @author Nick M. <webdev.nick@gmail.com>
 * @package welldone_opencart 
 */
   
  define('WELLDONE_VERSION', '1.0');
  define('WELLDONE_CACHE_DIR', 'welldone/data/cache/');
  
  $welldone_layouts = array(
    1=>array('title'=>'Default','image'=>'screen-main.jpg'),
    /*2=>array('title'=>'Color 1','image'=>'layout1.png'),
    3=>array('title'=>'Color 2','image'=>'layout2.png'),
    4=>array('title'=>'Color 3','image'=>'layout3.png'),
    5=>array('title'=>'Color 4','image'=>'layout4.png'),
    6=>array('title'=>'Color 5','image'=>'layout5.png'),
    7=>array('title'=>'Color 6','image'=>'layout6.png'),
    8=>array('title'=>'Color 7','image'=>'layout7.png'),
    9=>array('title'=>'Color 8','image'=>'layout8.png'),*/
    
  );
  
  require_once(DIR_SYSTEM . 'welldone/classes/welldone.php');
  $welldone = new Welldone($this->registry,$welldone_layouts);
  $this->registry->set('welldone', $welldone);
  
  require_once(DIR_SYSTEM . 'welldone/classes/welldone_cache.php');
  $welldone->cache = new WelldoneCache();
  
  require_once(DIR_SYSTEM . 'welldone/classes/welldone_tools.php');
  $welldone->tools = new WelldoneTools($this->registry);
  
  require_once(DIR_SYSTEM . 'welldone/classes/welldone_settings.php');
  $welldone->config = new WelldoneSettings($this->registry,$welldone_layouts);
  
  require_once(DIR_SYSTEM . 'welldone/classes/welldone_minifier.php');
  $welldone->minifier = new WelldoneMinifier();
  
  
  
  
  $route = isset($this->registry->get('request')->get['route']) ? $this->registry->get('request')->get['route'] : null;
  
  if (!$welldone->is_admin())
  {
    if ($route == 'product/category')
    {
      $this->execute(new Action('welldone/category/get_refine_categories'));
      $this->execute(new Action('welldone/categorypageslider'));
    }
    if ($route == 'product/product')
    {
      $this->execute(new Action('welldone/productcustomdata'));
    }
    
    $this->execute(new Action('welldone/topheader'));
    $this->execute(new Action('welldone/topmenu'));
    $this->execute(new Action('welldone/leftmenu'));
    $this->execute(new Action('welldone/topfooter'));
    
    if ($_SERVER['HTTP_HOST'] != 'welldone-oc-layout9.tonytemplates.com' && $_SERVER['HTTP_HOST'] != 'welldone-oc-layout10.tonytemplates.com')
    {
      $this->execute(new Action('welldone/footergrid'));
      $this->execute(new Action('welldone/footersociallinks'));
      $this->execute(new Action('welldone/footernewsletter'));
    }
      
    $this->execute(new Action('welldone/footercopyright'));
  
  }  
  
    
  
  
