<?php
/**
 * @author Nick M. <webdev.nick@gmail.com>
 * @package welldone_opencart 
 */
 
 class WelldoneSettings
 {
   private $db;
   private $config;
   private $configuration;
   private $welldone; 
   private $store_layout_id;
   private $store_id;
   
   public $welldone_layouts;
   
   public function __construct($registry,$welldone_layouts)
   {
     $this->db = $registry->get('db');
     $this->config = $registry->get('config');
     $this->welldone = $registry->get('welldone');
     
     $this->welldone_layouts = $welldone_layouts;
     $this->store_id = $this->config->get('config_store_id');
     $this->store_layout_id = $this->welldone->cache->get('welldone_layout_'.$this->store_id);
     if (!isset($this->welldone_layouts))
       $this->store_layout_id = 1;
     
     $this->load_configuration();
     
   }
   
   private function load_configuration()
   {
     //$this->configuration = $this->welldone->cache->get('welldone_config_'.$this->store_id.'_'.$this->store_layout_id);
     $this->configuration = $this->welldone->cache->get('welldone_config_'.$this->store_id.'_1');
     
     if (!is_array($this->configuration))
       $this->configuration = array();
       
     $lng_id = $this->config->get('config_language_id');
     foreach($this->configuration as $conf_name=>$conf_data)
     {
       if (is_array($conf_data) && isset($conf_data[$lng_id]) && preg_match('/^(.*)_lang$/Ui',$conf_name,$ret))
       {
         $conf_name = $ret[1];
         $this->configuration[$conf_name] = $conf_data[$lng_id]; 
       }
     }
   }
   
   public function get_cfg($name,$default = null)
   {
     if (!isset($this->configuration[$name]) || $this->configuration[$name] == '')
        return $default;
      else
        return $this->configuration[$name];
   }
   public function set_cfg($name,$value)
   {
     $this->configuration[$name] = $value;
   }
   
   public function get($category,$key,$default = null)
   {
     $category = $this->db->escape($category);
     $key = $this->db->escape($key);
     
     //$sql = "select * from ".DB_PREFIX."welldone_settings where category='$category' and store_id='{$this->store_id}' and layout_id='$this->store_layout_id' and `key`='$key'";
     $sql = "select * from ".DB_PREFIX."welldone_settings where category='$category' and store_id='{$this->store_id}' and `key`='$key'";
     $rows = $this->db->query($sql)->rows;
     
     if (count($rows) == 0)
       return $default;
     
     $result = array();
     
     foreach($rows as $row)
     {
       if ($row['serialized'] == 1)
          $value = unserialize($row['value']);
        else
          $value = $row['value'];
          
       $result[] = array(
         'value'=>$value,
         'parent_id'=>$row['parent_id'],
         'id'=>$row['id'],
       );
     }
     
     return $result;   
   }
   
 }