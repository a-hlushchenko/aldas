 <?php foreach ($products as $product) { ?>
  <div class="">
    <div class="catalog-box1">
      <div class="padding">
        <a href="<?php echo $product['href']; ?>" rel="nofollow"><img class="lazyOwl" data-src="<?php echo $product['thumb']; ?>" src="" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
        <div class="catalog-box1-title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <div class="catalog-box1-text"><?php if($product['fasad']){ ?>Материалы фасадов: <?php echo $product['fasad']; }?>
        <br/>
        <?php if ($product['template']==0) { ?>  
        Формат кухни: угловая/прямая/П-образная
        <?php } ?>
        </div>
        <?php if ($product['price']) { ?>
          <div class="catalog-box1-price">
            <?php if (!$product['special']) { ?>
              <?php if ($product['template']==0) { ?>  
                Цена за 1м<sup>2</sup>: <span><?php echo $product['price']; ?></span><br/>
                Готовая модель: <span><?php echo $product['price_got']; ?></span><br/>
                В рассрочку: <span><?php echo $product['price_ras']; ?></span> в мес.
              <?php } else { ?>
                Обычная цена: <span class="price-old"><?php echo $product['price_plus_30proc']; ?></span><br/>
                Стоимость по акции: <span class="price-new"><?php echo $product['price_minus_10proc']; ?></span><br/>
              <?php } ?>
            <?php } else { ?>
            Цена: <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
            <?php } ?>
          </div>
          <?php } ?>
          <?php if($product['new']){ ?>
          <div class="tag-new">
            <span>NEW</span>
          </div>
          <?php } ?>
      </div>
    </div>
  </div>
<?php } ?>