
<?php 
if($heading_title=='Мебель в классическом стиле'){ 
    $dat = [
      'item' => '1',
      'href' => 'katalog/klassicheskie/',
      'title2' => 'Вся мебель в классическом стиле',
      'descr' => 'Эти кухни выглядят элегантно и солидно, но не старомодно. Стиль "Классика" для тех, кто предпочитает гармонию и проверенную временем красоту. Такая мебель, как правило, изготавливается из массива дерева и может содержать много резьбы и мелких деталей.',
    ];
      
 } else { 
    $dat = [
      'item' => '2',
      'href' => 'katalog/sovremennye/',
      'title2' => 'Вся мебель в современном стиле',
      'descr' => 'Яркие и изящные варианты, для тех кто любит стиль и практичность. Современным кухням свойственны четкие линии, гладкие поверхности, сочетание цветов и текстур. Для производства таких моделей используются МДФ, эмаль и пластик.',
    ];  
} ?>

<div class="h2 dflex">
  <h2 class="before_green"><?php echo $heading_title; ?></h2>
  <a href="<?=$dat['href']?>" class="btn arrow"><?php echo $heading_title; ?></a>
</div>

<div class="descr"><?=$dat['descr']?></div>


<!-- <a href="<?php //echo $product['href']; ?>" class="imgg">
        <img src="<?php //echo $product['thumb']; ?>" alt="<?php //echo $product['name']; ?>"/>
      </a> -->
<div class="sl_row products swiper mebel<?php echo $module; ?>">
  <div class="swiper-wrapper">
    <?php foreach ($products as $product) { ?>
      <div class="swiper-slide product_slide">
        <div class="swiper product_images_slider">
          <div class="swiper-wrapper">
          <?php foreach ($product['images'] as $image) { ?>
            <a href="<?php echo $product['href']; ?>" class="swiper-slide"><img src="<?=$image['thumb']?>" alt="<?php echo $product['name']; ?>"></a>
            <?php } ?>
          </div>
          <div class="swiper-pagination"></div>
        </div>
        <div class="name"><?php echo $product['name']; ?></div>
        <div class="param"><span>Материал фасадов:</span> <?php echo $product['fasad'];?></div>
        <?php if ($product['price']) { ?>
          <div class="param"><span>Цена за метр:</span> 
            <?php if (!$product['special']) { ?>
              <span class="price"><?php echo $product['price']; ?></span>
              <?php } else { ?>
                <span class="price"><span class="new_price"><?php echo $product['special']; ?></span><span class="ald_price"><?php echo $product['price']; ?> ₽</span></span>
              <?php } ?>
          </div>
          <div class="param"><span>Цена проекта от:</span>  <span class="price"><span class="new_price">136 900 ₽</span><span class="ald_price">166 900 ₽</span></span></div>
        <?php } ?>
      </div>
    <?php } ?>
    
  </div>
  <div class="button-next"></div>
  <div class="button-prev"></div>
  <div class="swiper-pagination_line"><div class="swiper-pagination mebel"></div></div>
</div>


<script>
 document.addEventListener('DOMContentLoaded', function(){ 
	  
	  var swiper = new Swiper(".mebel<?php echo $module; ?>", {
        paginationClickable: true,
        slidesPerView: 1,
            spaceBetween: 24,
        pagination: {
              el: ".swiper-pagination",
          clickable: true,
            },
        navigation: {
          nextEl: ".button-next",
          prevEl: ".button-prev",
        },
        breakpoints: {
          440: {
            slidesPerView: 2,
            spaceBetween: 20,
          },
          768: {
            slidesPerView: 2,
            spaceBetween: 40,
          },
          1000: {
            slidesPerView: 3,
            spaceBetween: 50,
          },
        },
    });

});
</script>