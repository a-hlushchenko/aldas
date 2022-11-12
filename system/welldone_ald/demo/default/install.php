<?php
  $sql = "delete from ".DB_PREFIX."welldone_settings";
  $this->db->query($sql);
  
  $sql = "delete from ".DB_PREFIX."welldone_modules";
  $this->db->query($sql);
  
  $sql = "delete from ".DB_PREFIX."layout_module where code like 'welldone_%'";
  $this->db->query($sql);
  
  $sql = "delete from ".DB_PREFIX."setting where code like 'welldone_%'";
  $this->db->query($sql);
  
  $settings_sql = file_get_contents(DIR_SYSTEM.'welldone/demo/'.$install_layout.'/settings.sql');
  $settings_sql = str_replace('{store_id}',$store_id,$settings_sql);
  $settings_sql = str_replace('{table_prefix}',DB_PREFIX,$settings_sql);
  $this->db->query($settings_sql);
  
  $modules_sql = file_get_contents(DIR_SYSTEM.'welldone/demo/'.$install_layout.'/modules.sql');
  $modules_sql = str_replace('{store_id}',$store_id,$modules_sql);
  $modules_sql = str_replace('{table_prefix}',DB_PREFIX,$modules_sql);
  $this->db->query($modules_sql);
  
  $modules_layout_sql = file_get_contents(DIR_SYSTEM.'welldone/demo/'.$install_layout.'/modules_layout.sql');
  $modules_layout_sql = str_replace('{store_id}',$store_id,$modules_layout_sql);
  $modules_layout_sql = str_replace('{table_prefix}',DB_PREFIX,$modules_layout_sql);
  $modules_layout_sql = str_replace('{home_layout_id}',$home_layout,$modules_layout_sql);
  $this->db->query($modules_layout_sql);
  
  $query = "select * from ".DB_PREFIX."layout_module where code like 'welldone_%'";
  $rows = $this->db->query($query)->rows;
  
  foreach($rows as $row)
  {
    list($module_type,$module_id) = explode('.',$row['code']);
    
    $key = $module_type.'_'.$row['layout_module_id'].'_status'; 
    
    $query = "insert into ".DB_PREFIX."setting set
                 store_id='$store_id',
                 code='$module_type',
                 `key`='$key',
                 value='1',
                 serialized='0'
    ";
    $this->db->query($query);
  }
  
  
