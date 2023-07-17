<?php
class Pagination2 {
	public $total = 0;
	public $page = 1;
	public $limit = 20;
	public $num_links = 8;
	public $url = '';
	public $text_first = '|&lt;';
	public $text_last = '&gt;|';
	public $text_next = '&gt;';
	public $text_prev = '&lt;';

	public function render() {
		$total = $this->total;

		if ($this->page < 1) {
			$page = 1;
		} else {
			$page = $this->page;
		}

		if (!(int)$this->limit) {
			$limit = 10;
		} else {
			$limit = $this->limit;
		}

		$num_links = $this->num_links;
		$num_pages = ceil($total / $limit);

		$this->url = str_replace('%7Bpage%7D', '{page}', $this->url);

		$output = '<div class="catalog-width"><div class="wrapper catalog-top-new">';
		//$output .= '<ul class="pagination">';

		if ($page > 1) {
			$tmp_url = str_replace('&amp;', '&', $this->url);
			//$output .= '<a href="' . str_replace('&', '&amp;', rtrim( str_replace('page={page}', '', $tmp_url), '?&')) . '">' . $this->text_first . '</a>';
			if ($page == 2){
				$output .= '<a href="' . str_replace('&', '&amp;', rtrim( str_replace('page={page}', '', $tmp_url), '?&')) . '" class="catalog-prev"><svg width="6" height="8" viewBox="0 0 6 8" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M4.5 1L1.5 4L4.5 7" stroke="#18C792" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </svg></a>';
			}else{
				$output .= '<a href="' . str_replace('{page}', $page - 1, $this->url) . '" class="catalog-prev"><svg width="6" height="8" viewBox="0 0 6 8" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M4.5 1L1.5 4L4.5 7" stroke="#18C792" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </svg></a>';
			}
		}

		if ($num_pages > 1) {
			if ($num_pages <= $num_links) {
				$start = 1;
				$end = $num_pages;
			} else {
				$start = $page - floor($num_links / 2);
				$end = $page + floor($num_links / 2);

				if ($start < 1) {
					$end += abs($start) + 1;
					$start = 1;
				}

				if ($end > $num_pages) {
					$start -= ($end - $num_pages);
					$end = $num_pages;
				}
			}
			$output .= '<ul class="catalog-number">';
			for ($i = $start; $i <= $end; $i++) {
				if ($page == $i) {
					$output .= '<li class="active"><span>' . $i . '</span></li>';
				} else {
					if ($i == 1){
						$output .= '<li><a href="' . str_replace('&', '&amp;', rtrim( str_replace('page={page}', '', $tmp_url), '?&')) . '">' . $i . '</a></li>';
					}else{
						$output .= '<li><a href="' . str_replace('{page}', $i, $this->url) . '">' . $i . '</a></li>';
					}
				}
			}
			$output .= '</ul>';
		}

		if ($page < $num_pages) {
			$output .= '<a href="' . str_replace('{page}', $page + 1, $this->url) . '" class="catalog-next"><svg width="6" height="8" viewBox="0 0 6 8" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1.5 1L4.5 4L1.5 7" stroke="#18C792" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </svg></a></li>';
			//$output .= '<a href="' . str_replace('{page}', $num_pages, $this->url) . '" class="catalog-next">' . $this->text_last . '</a></li>';
		}

		//$output .= '</ul>';
		$output .= '</div></div>';

		if ($num_pages > 1) {
			return $output;
		} else {
			return '';
		}
	}
}