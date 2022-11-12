<?php if ($categories) { ?>
    <nav class="pushy left pushy-left" style="">
      <ul class="">
        <?php foreach ($categories as $category) { ?>
          <?php if ($category['children']) { ?>

            <?php foreach ($category['children'] as $key => $children) { ?>
              <li class="pushy-submenu"><a href="#<?php //echo $children['href']; ?>" onclick="return false;"><?php echo $key; ?></a>
                  <ul>
                    <?php foreach ($children as $child) { ?>
                    <li class="pushy-link"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                    <?php if($key=='Кухни') { ?>
                    <li><a href="katalog/">Каталог кухонь</a></li>
                    <?php } ?>
                  </ul>
              </li>
            <?php } ?>
          <?php } else { ?>
          <?php } ?>
        <?php } ?>
      </ul>
    </nav>

<?php } ?>

