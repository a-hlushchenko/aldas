<?php
class ModelToolImage extends Model {
	public function resize($filename, $width, $height,$wh='') {
		if (!is_file(DIR_IMAGE . $filename)) {
			if (is_file(DIR_IMAGE . 'no_image.jpg')) {
				$filename = 'no_image.jpg';
			} elseif (is_file(DIR_IMAGE . 'no_image.png')) {
				$filename = 'no_image.png';
			} else {
				return;
			}
		}

		$extension = pathinfo($filename, PATHINFO_EXTENSION);

		


		$old_image = $filename;
		$new_image = 'cache/' . utf8_substr($filename, 0, utf8_strrpos($filename, '.')) . '-' . $width . 'x' . $height . '.'.$wh.'.' . $extension;

		if (!is_file(DIR_IMAGE . $new_image) || (filectime(DIR_IMAGE . $old_image) > filectime(DIR_IMAGE . $new_image))) {
			$path = '';

			$directories = explode('/', dirname(str_replace('../', '', $new_image)));

			foreach ($directories as $directory) {
				$path = $path . '/' . $directory;

				if (!is_dir(DIR_IMAGE . $path)) {
					@mkdir(DIR_IMAGE . $path, 0777);
				}
			}

			list($width_orig, $height_orig) = getimagesize(DIR_IMAGE . $old_image);

			if ($width_orig != $width || $height_orig != $height) {
				$image = new Image(DIR_IMAGE . $old_image);
				$image->resize($width, $height,$wh);
				$image->save(DIR_IMAGE . $new_image);
			} else {
				copy(DIR_IMAGE . $old_image, DIR_IMAGE . $new_image);
			}
		}

		$imagepath_parts = explode('/', $new_image);
		$new_image = implode('/', array_map('rawurlencode', $imagepath_parts));
		/*----оптимизация озибражений----*/
		/*yum install optipng
		  yum install jpegoptim*/
		$info = pathinfo(DIR_IMAGE . $new_image);
		$extension = strtolower($info['extension']);
		if ($extension == 'jpeg' || $extension == 'jpg') {
			shell_exec("jpegoptim --max=90 --strip-all --all-progressive ". (DIR_IMAGE . $new_image));
		} elseif ($extension == 'png') {
			shell_exec("optipng ". (DIR_IMAGE . $new_image)) . "-strip all";
		}
		/*------*/
		
		if ($this->request->server['HTTPS']) {
			return $this->config->get('config_ssl') . 'image/' . $new_image;
		} else {
			return $this->config->get('config_url') . 'image/' . $new_image;
		}
	}
}
