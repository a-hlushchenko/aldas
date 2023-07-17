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
    margin-bottom: 24px;
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

<?php echo $footer; ?>
