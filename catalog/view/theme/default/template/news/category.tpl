<?php echo $header; ?>

        <?php echo $content_top; ?>
<style>
  .thumbnails{display:flex;justify-content:space-between;align-items:center;}

  .otzyvy {
    padding: 0 20px;
    max-width: 1260px;
  }

  .all-reviews {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 48px 24px;
    margin-bottom: 48px;
  }

  h1 {
    font-size: 32px;
    margin-bottom: 24px;
    color: #222;
  }

  h4 {
    margin: 0;
  }

  .caption {
    display: flex;
    flex-direction: column;
    gap: 16px;

  }

  .caption img {
    order: 0;
    max-width: 100%;
    max-height: 222px;
    border-radius: 4px;
    height: 100%;
    object-fit: cover;
    width: 100%;
  }

  .caption .img {
    position: relative;
  }

  .caption .quotes {
    width: 46px;
    position: absolute;
    top: 20px;
    right: 20px;
    height: 39px;
    z-index: 10;
  }

  .caption h4 {
    order: 1;
  }

  .caption .descrip {
    order: 2;
    overflow: hidden;
    color: #878585;
    text-overflow: ellipsis;
    font-size: 15px;
    line-height: 22px;
    display: -webkit-box;
    -webkit-line-clamp: 4;
    -webkit-box-orient: vertical;
  }

  .caption a {
    font-size: 20px;
    color: #222;
    font-weight: 400;
    line-height: 26px;
  }

  .bl10_wrapper {
    margin-top: 48px;
  }

  .review {
    display: grid;
    grid-template-columns: 1fr 1fr;
    padding: 48px;
    background-color: #F7F7F7;
    border-radius: 8px;
    gap: 48px;
    width: 85%;
    margin: 0 auto;
    max-width: 1220px;
    box-sizing: border-box;
    align-items: center;
    max-height: 85vh;
    overflow: auto;
    
  }

  .review-content {
    background-color: #fff;
    border-radius: 4px;
    padding: 20px;
    gap: 12px;
    display: flex;
    flex-direction: column;
  }

  .review-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .review-author {
    display: flex;
    align-items: center;
    gap: 12px;
  }

  .review-author strong {
    font-size: 20px;
    font-weight: 500;
  }

  .review-date {
    color: #878585;
    font-size: 15px;
  }

  .review-content-bottom {
    font-size: 15px;
    color: #222;
    line-height: 150%;
  }

  .review-right {
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 20px;
    align-items: start;
  }

  .review-right .swiper {
    max-width: 540px;
  }

  .review-right-content {
    display: flex;
    flex-direction: column;
    gap: 4px;
  }

  .review-right-content strong {
    font-size: 15px;
    font-weight: 700;
  }

  .review-right-content p {
    font-size: 15px;
    font-weight: 400;
    color: #878585;
    line-height: 150%;
  }

  @media all and (width < 1300px) {
    .review .swiper {
      max-width: 480px;
    }
  }

  @media all and (width < 1220px) {
    .review .swiper {
      max-width: 440px;
    }
  }

  @media all and (width < 1160px) {
    .review .swiper {
      max-width: 420px;
    }
    .review-content p {
      font-size: 14px;
      line-height: 130%;
    }
  }

  @media all and (width < 1160px) {
    .review {
      display: flex;
      flex-direction: column;
    }
    .review .swiper {
      max-width: 100%;
    }
    .review-content p {
      font-size: 15px;
      line-height: 150%;
    }
  }

  @media all and (width < 800px) {
    .review {
      padding: 24px;
    }
    h1 {
      font-size: 24px;
    }
  }
  @media all and (width < 500px) {
    .review {
      padding: 16px;
    }
    h1 {
      font-size: 21px;
    }
    .review-content p {
      font-size: 14px;
      line-height: 150%;
    }
  }

  @media (max-width: 920px) {
      .all-reviews {
      grid-template-columns: repeat(3, 1fr);
    }
    .caption a {
      font-size: 16px;
      font-weight: 500;
    }

    .caption .descrip {
      font-weight: 13px;
    }
  }

  @media (max-width: 680px) {
      .all-reviews {
      grid-template-columns: repeat(2, 1fr);
    }

    .caption .descrip {
      font-weight: 13px;
    }
  }

  @media (max-width: 450px) {
      .all-reviews {
      grid-template-columns: 1fr;
    }

    .caption .descrip {
      font-weight: 13px;
    }

    
  }


</style>
<div class="container">
  <ul class="breadcrumbs">
  <?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
    <?php if($breadcrumb['href']){ ?>
      <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"
          itemref="breadcrumb-1">
        <a href="http://aldas.ru/" itemprop="url">
        <span itemprop="title"><?php echo $breadcrumb['text']; ?></span>
        </a>
      </li >
    <?php } else { ?>
      <li itemprop="child" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"
          id="breadcrumb-2">
        <span itemprop="title"><?php echo $breadcrumb['text']; ?></span>
      </li>
    <?php } ?>
  <?php } ?>
  </ul>
</div>
<div class="container otzyvy">
  <div class="row"><?php echo $column_left; ?>
    <?php $class = 'col-sm-12'; ?>
    <div id="content" class="<?php echo $class; ?>">
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($articles) { ?>
      <div class="row" style="display:none;">
        <div class="col-md-4">
          <div class="btn-group hidden-xs">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-2 text-right">
          <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-1 text-right">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="row all-reviews">
        
        <?php foreach ($articles as $article) {
          
           ?>
       
        <div class="product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12">
          <div class="product-thumb">
            <!--<div class="image"><a href="<?php //echo $article['href']; ?>"><img src="<?php //echo $article['thumb']; ?>" alt="<?php //echo $article['name']; ?>" title="<?php //echo $article['name']; ?>" class="img-responsive" /></a></div>-->
            <div>
              <div class="caption">
                <a href="<?php echo $article['href']; ?>" rel="nofollow" title="Смотреть все фото">
                  <?php if($article['short_description']){ ?>
                  <div class="video"><?php echo $article['short_description']; ?></div>
                  <? } ?>
                  <h4><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h4>
                  <?php if($article['description']){ ?>
                  <div class="descrip lorait f15"><?php echo $article['description']; ?></div>
                  <? } ?>
                  <?php if ($article['images']) { ?>
                  <!-- <ul class="thumbnails" style="overflow:visible;"> -->
                    <?php foreach ($article['images'] as $key => $image) { if($key>0)continue;?>
                    <!-- <li><a href="<?php echo $article['href']; ?>" rel="nofollow" title="<?php echo $heading_title; ?>"> -->
                  <div class="img">
                    <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                    <img src="/catalog/view/theme/default/img/quotes.svg" alt="" class="quotes">
                  </div>
                </a>
                  <!-- </a></li> -->
      					  <?php } ?>
      					  <!-- <li><a href="<?php echo $article['href']; ?>" rel="nofollow" title="Смотреть все фото">Смотреть все фото</a></li> -->
      					<!-- </ul> -->
      				  <?php } ?>
                <?php if ($article['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($article['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
            </div>
          </div>
        </div>
        
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$articles) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<div class="review">

  <div class="review-left">
    <h1>Книжный шкаф в спальню | Отзыв 131/20</h1>
    <div class="review-content">

      <div class="review-top">

        <div class="review-author">
          <img src="/img/svg/review-icon.svg" alt="">
          <strong>Юлия М.</strong>
        </div>

        <div class="review-date">19.08.2020</div>

      </div>

      <p class="review-content-bottom">Наконец, дошли руки написать отзыв. Сказать, что я довольна, ни сказать ничего. Просто кухня мечты. Долго искали компанию, которая будет заниматься обустройством нашей кухни и совершенно случайно наткнулись на вашу компанию. Решили поговорить, посмотреть, что смогут предложить нам под нашу не стандартную кухню. Ребята разработали нам проект, увидев его, я ахнула. Он так сильно запал мне в душу, решили незамедлительно заказывать. Честно, ожидание мне казалось вечностью, но все было изготовлено в срок. Привезли, установили, подключили подсветку. Как же это красиво, удобно, функционально. Безмерно вас благодарим.</p>
    
    </div>
  </div>

  <div class="review-right">

    <div class="swiper">
      <div id="tehnika" class="">
        <div class="swiper-wrapper">
          <div class="item swiper-slide first-img-container">
            <img src="images/onas/3d2.jpg">
          </div>
          <div class="item swiper-slide">
            <img src="images/onas/3d3.jpg">
          </div>
          <div class="item swiper-slide">
            <img src="images/onas/3d4.jpg">
          </div>
          <div class="item swiper-slide">
            <img src="images/onas/3d5.jpg">
          </div>

        </div>
        <div class="button-next"></div>
        <div class="button-prev"></div>
        <div class="swiper-pagination"></div>
      </div>
    </div>

    <div class="review-right-content">
      <strong>В проекте:</strong>
      <p>фотографии готового проекта большой кухни из МДФ с патиной золото, лак высокий глянец. Покрытие 12 слоев ЛКМ</p>
    </div>

  </div>

</div>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var swiper = new Swiper("#tehnika", {
			paginationClickable: true,
			slidesPerView: 1,

			pagination: {
				el: ".swiper-pagination",
				clickable: true,
			},
			navigation: {
				nextEl: ".button-next",
				prevEl: ".button-prev",
			},
		});
	});
</script>

<?php echo $footer; ?>
