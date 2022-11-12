<style>
.owlb .item{border-radius:10px;border-right:1px solid #d5d6d6;border-bottom:1px solid #d5d6d6;border-left:1px solid #d5d6d6;padding:15px 14px;background:#fff;margin:0 8px;}
.owlb a{display:block;text-align:center;}
.owlb img{max-width:100%;}
.owlb .img{margin:9px 0;}
.owlb .images{display:flex;justify-content:space-between;margin-bottom:15px;}
.owlb .itemd .txt{color:#4b4a4a;font-size:14px;height:63px;overflow:hidden;line-height:21px;}
.owlb .arrow{width:50px;height:50px;border-radius:100%;background:#fff;display:block;position: relative;box-shadow: 1px 1.732px 6px 0px rgb( 0, 0, 0 ,0.5);}
.owlb .arrow:hover{box-shadow: 1px 1.732px 6px 0px rgb( 0, 0, 0 ); }
.owlb .arrow:before,.owlb .arrow:after{content:'';width:17px;border-top:2px solid #478c83;-moz-transform: rotate(45deg);-ms-transform: rotate(45deg);-webkit-transform: rotate(45deg);-o-transform: rotate(45deg);transform: rotate(45deg);position:absolute;top:18px;right: 15px;}
.owlb .arrow:after{-moz-transform: rotate(-45deg);-ms-transform: rotate(-45deg);-webkit-transform: rotate(-45deg);-o-transform: rotate(-45deg);transform: rotate(-45deg);top:30px;right: 15px;}
.owlb .arrow:hover:before,.owlb .arrow:hover:after{border-top:2px solid #47aa9d;}
.owlb .item_prev:before{top:30px;left: 15px;}
.owlb .item_prev:after{top:18px;left: 15px;}
.owlb .owl-prev,.owlb .owl-next{position: absolute;}
.owlb .owl-prev{top:50%;left:0;margin-top:-25px;}
.owlb .owl-next{top:50%;right:0;margin-top:-25px;}
.owlb .buttonnn{border-radius: 10px;border:2px solid #a3c5c1;line-height:36px;display:block;font-size: 15px;color: #478c83;text-transform:uppercase;font-weight:bold;font-family:'Candara';}
.owlb .buttonnn:hover{color:#fff;background:#47aa9d;border:2px solid #47aa9d;text-decoration: none;}
.ntitle{font-size:45px;color:#000;text-align:center;font-family:'Candara';line-height:1.5;padding-bottom:40px;}
</style>
<div class="ntitle">Отзывы наших клиентов</div>
<div id="news_carousel<?php echo $module; ?>" class="owl-carousel owlb">
  
  <?php foreach ($articles as $article) { ?>
  <div class="item">
    <div class="itemd">
      <div class="txt"><?php echo $article['description']; ?></div>
    </div>
    
    <a href="<?php echo $article['link']; ?>" class="img">
      <img src="<?php echo $article['image']; ?>" alt="<?php echo $article['title']; ?>"/>
    </a>
    <div class="images">
      <?php foreach($article['images'] as $image){ ?>
      <a href="<?php echo $article['link']; ?>"><img src="<?php echo $image; ?>" alt="<?php echo $article['title']; ?>"/></a>
      <?php } ?>
    </div>
    <a href="<?php echo $article['link']; ?>" class="buttonnn">Читать отзыв</a>
  </div>
  <?php } ?>
</div>
<script>
$(document).ready(function($) {
$('#news_carousel<?php echo $module; ?>').owlCarousel({
	items: 4,
	autoPlay:8000,
  margin:10,
	navigation: true,
	navigationText: ['<i class="item_prev arrow"></i>', '<i class="item_next arrow"></i>'],
	pagination: false,
  itemsDesktop : [1199, 4],
  itemsDesktopSmall : [979, 3],
  itemsTablet : [768, 2],
  itemsTabletSmall : false,
  itemsMobile : [479, 1],

});
/*$('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });*/
});
</script>