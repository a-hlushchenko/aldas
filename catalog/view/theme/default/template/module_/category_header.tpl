<?php 
vdump($categories);
if ($categories) { ?>

  <nav id="menu" class="navbar menu">
    <div class="navbar-header"><span id="category" class="visible-xs"></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <li class="logo_menu"><img src="<?php echo MAIN_SERVER; ?>image/logo_2m.png"/></li>
        <?php foreach ($categories as $keyy => $category) {  ?>
        <?php if ($category['children']) { ?>

          <?php foreach ($category['children'] as $key => $children) { if($key=='') continue;?>

          <li class="dropdown"><a href="<?php //echo $children['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $key; ?></a>
            <div class="dropdown-menu">
            <div class="v"></div>
              <div class="dropdown-inner">
                <?php if(count($children)>10){ ?>
                <?php foreach (array_chunk($children, ceil(count($children) / 2)) as $child) { ?>
                  <ul class="list-unstyled">
                    <?php foreach ($child as $chil) { ?>
                    <li><a href="<?php echo $chil['href']; ?>"><?php echo $chil['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                <?php } ?>
                <?php } else { ?>

                <ul class="list-unstyled">
                  <?php foreach ($children as $child) { ?>
                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>
                  <?php if($key=='Кухни') { ?>
                  <li><a href="katalog/">Каталог кухонь</a></li>
                  <?php } ?>
                </ul>
                <?php } ?>
              </div>
            </div>
              
          </li>
          <?php } ?>
        <?php } elseif ($category['children2']) {  ?>

          <li class="dropdown h1200"><a href="<?php //echo $children['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?=$category['name'];?></a>
            <div class="dropdown-menu">
            <div class="v"></div>
              <div class="dropdown-inner">
                <ul class="list-unstyled">
                  <?php foreach ($category['children2'] as $child) { ?>
                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
            </div>
              
          </li>
        <?php } ?>
        <?php } ?>
          <li class="h1200"><a href="https://mebel-bruno.ru/">ШКАФЫ</a></li>
          <li class="tel2"><a class="roistatphone" onclick="window.location = $(this).attr('href');" href="tel:84993471227">8 (499) 347-12-27</a></li>
      </ul>

    </div>  
  </nav>

<?php } ?>

