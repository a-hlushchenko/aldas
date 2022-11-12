<div id="carousel<?php echo $module; ?>" class="owl-carousel" style="max-height:114px;height:114px;overflow:hidden;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <a href="" onclick="return false;" rel="nofollow"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$(document).ready(function(){
  $('#carousel<?php echo $module; ?>').owlCarousel({
     items : 1,
     autoPlay: 7000,
      itemsDesktop : [1199,1],
      itemsDesktopSmall : [992,1],
      itemsTablet : [768, 1],
      itemsMobile : [320, 1],
      pagination : false,
      navigation : false,
      paginationNumbers : false
  });
});
--></script>