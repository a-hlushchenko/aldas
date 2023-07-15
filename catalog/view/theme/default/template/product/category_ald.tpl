<?php $noscreen=false; ?>
<?php echo $header; ?>
<style>
.pcalc{display: none; position:absolute;right:20px;bottom:10px;}
.catalog-box1:hover .pcalc { display: block; }
.pcalc .getProdCalc{margin:0}
.products .button{background:rgba(182,158,147,0.4)!important;color:#fff;font-size:12px;width:125px;
box-shadow: none;
-moz-box-shadow: none;
-webkit-box-shadow: 0 0 5px #333;
}
</style>
<div class="content">
<div class="container category">

  <?php echo $content_top; ?>

    <div class="wrapper">
      <ul class="catalog-list">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li>
        <?php if($breadcrumb['href']){ ?>
          <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } else { ?>
          <?php echo $breadcrumb['text']; ?>
        <?php } ?>
        </li>
        <?php } ?>
      </ul>
    </div>

  <div class="row catalog-top">
    <?php echo $column_left; ?>

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="catalog-box">


      <div class="row">
        <?php if ($thumb) { ?>
        <?php /* <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div> */ ?>
        <?php } ?>

        <div class="col-sm-12 descr">
          <h1><?php echo $heading_title; ?></h1>
          <?php //if ($description) { ?>
          	<?php echo $description; ?>
          <?php //} ?>
        </div>

      </div>
      <hr>
      <style>
        .event {
          text-align: center;
          padding-bottom: 20px;
        }
        .event2 {
          border: 2px solid red;
          padding: 10px;
          display: inline-block;
          font-weight: bold;
          font-size: 16px;
        }
        .event2 span {
          color: red;
        }
      </style>
      <noindex>
      <div class="event">
        <div class="event2">
        <span>Важно!</span> Каждую модель можно заказать по индивидуальным размерам в любом формате, цвете и комплектации</div>
      </div>
      </noindex>

      <?php //<img src="https://www.aldas.ru/image/catalog/sale_25.jpeg" style="width: 100%"> ?>

      <?php if ($products) { ?>
      <?php if ($noscreen) { ?>
      <noindex>
        <div class="row" id="sort">
            <div class="col-md-4 text-right">
              <div>Сортировать каталог по:</div>
            </div>

              <div class="sort col-md-8 text-left">
                  <?php foreach ($sorts as $sorts) { ?>
                  <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                  <a href="<?php echo $sorts['href']; ?>" class="selected"><?php echo $sorts['text']; ?></a>
                  <?php } else { ?>
                  <a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a>
                  <?php } ?>
                  <?php } ?>
              </div>

        </div>
        </noindex>
        <?php } ?>

        <div class="padding">
        <div class="row products">
        <?php if($noscreen){ ?>
          <div class="col-md-12 col-sm-12 hidden-xs text-right" style="padding-right:30px;">
            <div class="btn-group btn-group-sm">
              <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="list">&nbsp;</i></button>
              <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="grid">&nbsp;</i></button>
              <button type="button" id="grid-view2" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="grid2">&nbsp;</i></button>
            </div>
          </div>
        <?php } ?>
         <?php // по умолчанию было col-lg-4 col-md-6 col-sm-6 col-xs-12
         $variat_abc='C';
          if($variat_abc=='A'){
            $class_abc="col-lg-12 col-md-6 col-sm-6 col-xs-12";
          } elseif($variat_abc=='B'){
            $class_abc="col-lg-6 col-md-6 col-sm-6 col-xs-12";
          } elseif($variat_abc=='C'){
            $class_abc="col-lg-4 col-md-6 col-sm-6 col-xs-12";
          }

         ?>
         <div id="list_grid">
          <?php foreach ($products as $product) { ?>
          <div class="<?php echo $class_abc; ?> variant_<?php echo $variat_abc; ?> prod_grid">
            <div class="catalog-box1">
              <div class="padding">
                <?php if($variat_abc=="A"){ ?>
                  <div class="catalog-box1-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                  <div class="tag">Доступны любые форматы и размеры</div>
                <?php } ?>
                <div class="catalog-box1-image">
                  <?php if($product['new']){ ?>
                  <div class="tag-new">
                    <span>NEW</span>
                  </div>
                  <?php } ?>
                <a href="<?php echo $product['href']; ?>" rel="nofollow"><img src="<?=$placeholder;?>" data-original="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>

                    <div class="pcalc">
                      <?php /*<a class="button btn" href="<?php echo $product['href']; ?>">Подробнее</a> */?>
                      <button type="button" class="button btn<?php echo (!$onclick)?' getProdCalc':'';?>" onclick="<?=$onclick?>" data-prid="<?=$product['product_id']?>">Онлайн расчет</button>
                    </div>
                </div>
                <?php if($variat_abc!="A"){ ?>
                <div class="catalog-box1-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                <?php } ?>
                <!--noindex-->
                <div class="catalog-box1-text"><?php /*<?php if($product['fasad']){ ?>Материалы фасадов: <?php echo $product['fasad']; }?> */?>
                <br/>
                <?php if (false && $product['template']==0) { ?>
                Формат кухни: угловая/прямая/П-образная
                <?php } ?>
                </div>
                <!--/noindex-->
                <?php if ($product['price']) { ?>
                  <div class="catalog-box1-price">
                    <?php if (!$product['special']) { ?>
                      <?php if ($product['template']==0) { ?>
                        Цена за м/п: <span><?php echo $product['price']; ?></span><br/>
                        <? /* Готовая 3м: <span><?php //echo $product['price_got3'];//echo $product['price_got']; ?></span><br/> */ ?>
                        Цена проекта от:  <span><?php echo $product['price_got_new']; ?></span> <span class="old-project-price"><?php echo $product['price_got_old']; ?></span>
                        <? /* В рассрочку:  <span><?php echo $product['price_ras']; ?></span> в мес. */ ?>
                      <?php } else { ?>
                        Обычная цена: <span><?php echo $product['price_plus_30proc']; ?></span><br/>
                        Стоимость по акции: <span><?php echo $product['price_minus_10proc']; ?></span><br/>
                      <?php } ?>
                    <?php } else { ?>
                    Цена: <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                    <?php } ?>
                  </div>
                  <div class="clear"></div>
                  <?php } ?>

              </div>
            </div>
          </div>
          <?php } ?>
        </div>
        </div>
        </div>

        <?php if ($loadmore_status) {?>
          <style>
            a.load_more {
              <?php if (isset($loadmore_style)) {echo $loadmore_style;} else {?>
                display:inline-block; margin:0 auto 20px auto; padding: 0.5em 2em; border: 1px solid #069; border-radius: 5px; text-decoration:none; text-transform:uppercase;
              <?php } ?>
            }
          </style>
          <? /* <div id="load_more" style="display:none;">
            <div class="row text-center">
              <a href="#" class="load_more"><?php //echo $loadmore_button; ?></a>
            </div>
          </div> */ ?>
        <?php } ?>
        <?php if (0&&$loadmore_arrow_status) {?>
          <a id="arrow_top" style="display:none;" onclick="scroll_to_top();"></a>
        <?php } ?>

      <?php echo $pagination; ?>

      <?php } ?>

      <div class="row">
        <div class="col-sm-12 descr"><?php echo $short_description; ?></div>
      </div>

      <style>
      .b4{/*padding:63px 0 70px;*/margin-top:20px;
        background:#e6e7e7;padding-bottom:41px;}
      .allnews{text-align:center;padding-top:30px;font-weight:bold;}
      .allnews a{text-transform:uppercase;text-decoration: underline;color:#478c83;font-size:16px;font-weight:400;font-weight:bold;}
      </style>


      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
      </div>


    <?php //echo $column_right; ?></div>
</div>
<noindex>
<div class="b4">
  <div class="container">
    <div class="row">
      <?php echo $news; ?>
    </div>
    <div class="allnews">
      <a href="otzyvy/">Посмотреть все отзывы</a>
    </div>
  </div>
</div>
</noindex>
</div>

<?php echo $footer; ?>
