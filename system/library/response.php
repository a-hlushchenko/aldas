<?php
class Response {
	private $headers = array();
	private $level = 0;
	private $output;
	
	public function __construct($registry) {
		$this->config = $registry->get('config');
		$this->request = $registry->get('request');
	}

	public function addHeader($header) {
		$this->headers[] = $header;
	}

	public function redirect($url, $status = 301) {
		header('Location: ' . str_replace(array('&amp;', "\n", "\r"), array('&', '', ''), $url), true, $status);
		exit();
	}

	public function setCompression($level) {
		$this->level = $level;
	}

	public function setOutput($output) {
		$this->output = $output;
	}

	public function getOutput() {
		return $this->output;
	}

	private function compress($data, $level = 0) {
		if (isset($_SERVER['HTTP_ACCEPT_ENCODING']) && (strpos($_SERVER['HTTP_ACCEPT_ENCODING'], 'gzip') !== false)) {
			$encoding = 'gzip';
		}

		if (isset($_SERVER['HTTP_ACCEPT_ENCODING']) && (strpos($_SERVER['HTTP_ACCEPT_ENCODING'], 'x-gzip') !== false)) {
			$encoding = 'x-gzip';
		}

		if (!isset($encoding) || ($level < -1 || $level > 9)) {
			return $data;
		}

		if (!extension_loaded('zlib') || ini_get('zlib.output_compression')) {
			return $data;
		}

		if (headers_sent()) {
			return $data;
		}

		if (connection_status()) {
			return $data;
		}

		$this->addHeader('Content-Encoding: ' . $encoding);

		return gzencode($data, (int)$level);
	}

	public function output() {
		if ($this->output) {

			//Q: Add width/height tags to all images for Google Page Speed tip:
			//http://code.google.com/speed/page-speed/docs/rendering.html#SpecifyImageDimensions
			/*preg_match_all('/<img[^>]+>/i', $this->output, $result);

			$img = array();
			foreach($result[0] as $img_tag) {
				preg_match_all('/(width|height|src)=("[^"]*")/i',$img_tag, $img[$img_tag]);
			}

			foreach ($img as $k => $info) {
				if (count($info) == 3 && !empty($info[1]) && $info[1][0] == 'src') {
					//if (curl_init(str_replace('"', '', $info[2][0]))) {
					$imgfile = str_replace('"', '', $info[2][0]);
					$imgfile = str_replace(HTTP_SERVER, DIR_IMAGE . '../', $imgfile);
					//$imgfile = str_replace(HTTPS_SERVER, DIR_IMAGE . '../', $imgfile);
					//echo $imgfile.'<br/>';
					if (file_exists($imgfile)) {
						if(getImageSize(str_replace('"', '', $imgfile))==false) continue;
						
						$image_info = getImageSize(str_replace('"', '', $imgfile));
						$k = trim($k, '/>');
						$k = trim($k, '>');
						$this->output = str_replace($k, ($k . ' ' . $image_info[3]), $this->output);
					}
				}
			}*/
			// добавляем для поддоменов
			$this->output = str_replace('src="images/', 'src="'.MAIN_SERVER.'images/', $this->output);
			//////////////////
			// склоняем города
			/*
			morpher_inflect('Пупкин Василий', 'dat');
			*/
			// заменяем Москва на другое города для поддоменов
			//if(isset($this->request->get['admin'])){

				/*
				И	или	im	именительный падеж
				Р	или	rod	родительный падеж
				Д	или	dat	дательный падеж
				В	или	vin	винительный падеж
				Т	или	tvor	творительный падеж
				П	или	predl	предложный падеж без предлога
				П_о	или	predl-o	предложный падеж с предлогом о/об/обо
				М	или	gde	местный падеж (отвечает на вопрос где?)
				*/
			if($this->config->get('config_city')){
				$city = $this->config->get('config_city');
				$city_v = morpher_inflect($city,'gde');
				$city_po = morpher_inflect($city,'dat');
				
				
				$this->output = str_replace('в Москве', $city_v, $this->output);
				$this->output = str_replace('по Москве', 'по '.$city_po, $this->output);
			}
			//}
			//////////////////
			

			if ($this->level) {
				$output = $this->compress($this->minify($this->output), $this->level);
			} else {
				$output = $this->minify($this->output);
			}

			if (!headers_sent()) {
				foreach ($this->headers as $header) {
					header($header, true);
				}
			}

			echo $output;

		}
	}

	function minify($html) {
		//return $html;
		$html = preg_replace("`>\s+<`", "> <", $html);
		$replace = array(
			'&nbsp;' => '&#160;',
			'&copy;' => '&#169;',
			'&acirc;' => '&#226;',
			'&cent;' => '&#162;',
			'&raquo;' => '&#187;',
			'&laquo;' => '&#171;'
		);
		return $html;
	}	
}