<div class="container">
  <div class="txt">
    <?php echo $heading_title; ?>
  </div>
  <div class="txt2">
    <?php if($heading_title=='Мебель в классическом стиле'){ ?>
    Эти кухни выглядят элегантно и солидно, но не старомодно. Стиль "Классика" для тех, кто предпочитает гармонию и проверенную временем красоту.<br>
Такая мебель, как правило, изготавливается из массива дерева и может содержать много резьбы и мелких деталей.
    <?php } elseif($heading_title=='Мебель в современном стиле'){ ?>
    Яркие и изящные варианты, для тех кто любит стиль и практичность. Современным кухням свойственны четкие линии, гладкие поверхности, сочетание цветов и текстур. Для производства таких моделей используются МДФ, эмаль и пластик.
    <?php } ?>
  </div>
</div>
<style>
.pre_cont_b6{background:#e6e7e7;padding:35px 0 26px;margin-top:35px;}
.owlb2 .item{border-radius:10px;border:5px solid #e6e7e7;padding:20px;background:#fff;margin:0 7px;margin-bottom:10px;}
.owlb2 .item:hover{border-color:#91b4b0;box-shadow: 1px 1.732px 8px 5px rgb(0,0,0,0.2);}
.owlb2 img{max-width:100%;}
.arrow{width:50px;height:50px;border-radius:100%;background:#fff;display:block;position: relative;box-shadow: 1px 1.732px 6px 0px rgb( 0, 0, 0 ,0.5);}
.arrow:hover{box-shadow: 1px 1.732px 6px 0px rgb( 0, 0, 0 ); }
.arrow:before,.arrow:after{content:'';width:17px;border-top:2px solid #478c83;-moz-transform: rotate(45deg);-ms-transform: rotate(45deg);-webkit-transform: rotate(45deg);-o-transform: rotate(45deg);transform: rotate(45deg);position:absolute;top:18px;right: 15px;}
.arrow:after{-moz-transform: rotate(-45deg);-ms-transform: rotate(-45deg);-webkit-transform: rotate(-45deg);-o-transform: rotate(-45deg);transform: rotate(-45deg);top:30px;right: 15px;}
.arrow:hover:before,.arrow:hover:after{border-top:2px solid #47aa9d;}
.item_prev:before{top:30px;left: 15px;}
.item_prev:after{top:18px;left: 15px;}
.owl-prev,.owl-next{position: absolute;}
.owl-prev{top:50%;left:0;margin-top:-25px;}
.owl-next{top:50%;right:0;margin-top:-25px;}

.b6 .name{color:#e74c3c;font-size:22px;font-family:'Candara';}
.b6 .descrip{color:#333333;font-size:14px;padding:15px 0;}
.b6 .flexb{display:flex;justify-content:space-between;padding-top:18px;color:#333;font-size:14px;line-height:21px;}
.b6 .price{text-align:right;}
.b6 .price span{color:#ed1c24;}
.b6 .tcenter{text-align:center;}
.b6 a.bmore{font-size:20px;color:#478c83;font-weight:bold;font-family:'Candara';padding: 8px 0 8px 0;display: inline-block;text-decoration:underline;}
.b6 a.bmore:hover{text-decoration:none;}
</style>

<div class="pre_cont_b6">
<div class="container">
<div class="row">
  <div id="news_carousel<?php echo $module; ?>" class="owl-carousel owlb2">
    <?php foreach ($products as $product) { ?>
    <div class="item">
      <div class="itemd">
        <div class="name"><?php echo $product['name']; ?></div>
        <div class="descrip">Изготавливается на заказ. В любом формате, <br>размере, цвете и комплектации</div>
      </div>
      <a href="<?php echo $product['href']; ?>" class="imgg">
        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
      </a>
      <div class="flexb">
        <div class="fasad">
          <?php if($product['fasad']){ ?><b>Материал фасадов:</b><br> <?php echo $product['fasad']; }?>
        </div>
        <?php if ($product['price']) { ?>
          <div class="price">
            Цена за метр:<br>
            <?php if (!$product['special']) { ?>
            <span><?php echo $product['price']; ?></span>
            <?php } else { ?>
            <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
            <?php } ?>
          </div>
        <?php } ?>
      </div>
      
    </div>
    <?php } ?>
  </div>
  <div class="tcenter">
    <?php if($heading_title=='Мебель в классическом стиле'){ ?>
    <a href="katalog/klassicheskie/" class="bmore">Посмотреть всю мебель в классическом стиле</a>
    <?php } else { ?>
    <a href="katalog/sovremennye/" class="bmore">Посмотреть всю мебель в современном стиле</a>
<?php } ?>
  </div>
</div>
</div>
</div>

<script>
$(document).ready(function($) {
$('#news_carousel<?php echo $module; ?>').owlCarousel({
  items: 3,
  autoPlay: (<?php echo $module; ?>-2)*111000,
  margin:10,
  navigation: true,
  navigationText: ['<i class="item_prev arrow"></i>', '<i class="item_next arrow"></i>'],
  pagination: false,
  itemsDesktop : [1199, 3],
  itemsDesktopSmall : [979, 2],
  itemsTablet : [768, 2],
  itemsTabletSmall : false,
  itemsMobile : [479, 1],
});
});
</script>