<?php  
class ControllerModuleNewsCarousel extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('news/article');
		$this->load->model('tool/image');

		//$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		//$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['articles'] = array();

		//$results = $this->model_news_article->getArticleCarousel($setting['category']);
		$results = $this->model_news_article->getArticleCarousel(1,10);
		//vdump($results);
		foreach ($results as $result) {
			

			$images = $this->model_news_article->getArticleImages($result['article_id']);
			$images_ar = array();
			foreach ($images as $key=> $image) {
				if($key==0){
					$imag = $this->model_tool_image->resize($image['image'], 244, 198,'wh');
				} else {
					$images_ar[] = $this->model_tool_image->resize($image['image'], 77,60,'wh');
				}
				if($key==3){break;}
			}
				
			//if (is_file(DIR_IMAGE . $result['image'])) {
				$data['articles'][] = array(
					'title' => $result['name'],
					'autor' => $result['autor'],
					'link'  => $this->url->link('news/article', 'article_id=' . $result['article_id']),
					'description'  => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 130). '...',
					//'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
					'image' => $imag,
					'images' => $images_ar
				);
			//}
		}
		//vdump($data['articles']);

		$data['module'] = $module++;

		return $this->load->view('default/template/module/news_carousel.tpl', $data);

	}
}
?>