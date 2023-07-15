<?php if ($categories) { 
    //vdump($categories);

    ?>
    <div class="menu_item_el">
      <ul>
        <? foreach ($categories as $keyy => $category) { ?>
        <?php if ($category['children']) { ?>
            <?php foreach ($category['children'] as $key => $children) {
                if ($key == '') {
                    continue;
                } ?>
                <?php if ($key != 'Цвет') { ?>
                    <li class="menu_sub_item">
                        <b><?=$key?></b>
                        <ul class="menu_sub_item_block">
                            <?php foreach ($children as $key2 => $chil) { ?>
                                <li><a href="<?php echo $chil['href']; ?>" title="<?php echo $chil['name']; ?>"><?php echo $chil['name']; ?></a></li>
                            <? } ?>
                        </ul>
                    </li>
                <? } else { ?>                     
                <? } ?>
            <? } ?>
        <? } ?>
        <? } ?>
        
        </ul>
    </div>

<?php } ?>