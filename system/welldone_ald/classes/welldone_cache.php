<?php
class WelldoneCache {

	public function get($key) {
		$file = DIR_SYSTEM.WELLDONE_CACHE_DIR.'cache-'.$key;
    
		if (file_exists($file) && filesize($file)) {
			$handle = fopen($file, 'r');

			flock($handle, LOCK_SH);

			$data = fread($handle, filesize($file));

			flock($handle, LOCK_UN);

			fclose($handle);

			return json_decode($data, true);
		}

		return false;
	}

	public function set($key, $value) {
		$this->delete($key);

		$file = DIR_SYSTEM.WELLDONE_CACHE_DIR.'cache-'.$key;

		$handle = fopen($file, 'w');

		flock($handle, LOCK_EX);

		fwrite($handle, json_encode($value));

		fflush($handle);

		flock($handle, LOCK_UN);

		fclose($handle);
	}

	public function delete($key) {
		$file = DIR_SYSTEM.WELLDONE_CACHE_DIR.'cache-'.$key;
    
    if (file_exists($file)) 
    {
		  unlink($file);
		}
	}
  
  public function clean($key) 
  {
    $files = glob(DIR_SYSTEM.WELLDONE_CACHE_DIR . 'cache-'.$key.'*');
    
    if ($files) 
    {
      foreach ($files as $file) 
      {
				if (file_exists($file)) 
        {
					unlink($file);
				}
			}
    }
  }
  
  public function clear($clear_minify = true)
  {
    $this->clean('controller-');
    $this->clean('module-');
    //$this->clean('custom-');
    
    if ($clear_minify)
    {
      $this->clear_minify_cache('css');
      $this->clear_minify_cache('js');
    }
  }
  
  public function clear_minify_cache($type)
  {
    $files = glob(DIR_SYSTEM.WELLDONE_CACHE_DIR . 'minify/*.'.$type);
    
    if ($files) 
    {
      foreach ($files as $file) 
      {
				if (file_exists($file)) 
        {
					unlink($file);
				}
			}
    }
  }
}