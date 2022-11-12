
<div class="col-lg-2 col-md-3 col-sm-12" style="padding-right:0px;">
  <div class="catalog-block">
    <div class="padding">
      <?php $c=0; foreach ($categories as $categor) { ?>
      <?php //if ($category['category_id'] == $category_id) { ?>
      
      <?php if ($categor['children']) { ?>
      <?php foreach ($categor['children'] as $key => $children) { 

        $c++;

        if($key=='По цвету' || $key=='По материалу' || $key=='По стилю' || $key=='Формат') {
            $style='style="display:none;"';
          } else {
            $style=false;
          }
      ?>
      <div class="col-lg-12 col-md-12 col-sm-4 col-xs-12">
      <div class="catalog-block-title"><a rel="nofollow" onclick="$(this).parent().next().toggle('slow');"><?php echo $key; ?></a></div>
        <ul class="catalog-list1" id="c<?=$c;?>"<?php if($style){echo $style;}?>>
        <?php foreach ($children as $child) {   ?>
         
        <?php if ($child['category_id'] == $child_id) { ?>
        <li><a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a></li>
        <script>
          $("#c<?=$c?>").attr('style','');
        </script>
        <?php } else { ?>
        <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
        <?php } ?>
        
        <?php } ?>
        </ul>
      </div>
        <?php } ?>
      
      <?php } ?>
      

      <?php //} else { ?>
      <!--<a href="<?php //echo $category['href']; ?>"><?php //echo $category['name']; ?></a>-->
      <?php //} ?>
      <?php } ?>
      <div class="catalog-button"><a href="katalog/" rel="nofollow" onclik="retun false;">Все кухни</a></div>
    </div>
  </div>
</div>
