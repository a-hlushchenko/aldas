<?php if ($categories) { 
    //vdump($categories);

    ?>
    <ul class="main_menu">
       
        <li><a href="#" class="kitchen" >Кухни <svg width="7" height="4" viewBox="0 0 7 4" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M2.79289 3.29289L1.20711 1.70711C0.577142 1.07714 1.02331 0 1.91421 0H5.08579C5.97669 0 6.42286 1.07714 5.79289 1.70711L4.20711 3.29289C3.81658 3.68342 3.18342 3.68342 2.79289 3.29289Z" fill="#18C792"/> </svg></a></li>
        <li><a href="/shkafy/">Шкафы</a></li>
        <li><a href="/prihozhie/">Прихожие</a></li>
        <li><a href="/mebel-dlya-spalni/">Спальни</a></li>
        <li><a href="/detskie/">Детские</a></li>
        <li><a href="/gostinyie/">Гостиные</a></li>
        <li><a href="/garderobnyie/">Гардеробные</a></li>
        <li><a href="/kabinety/">Кабинеты</a></li>

    </ul>
    <div class="menu_item_el">
    <div class="container">
        <div class="menu_close btn light"><svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"/> <path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"/> </svg></div>
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
                    <li class="color menu_sub_item">
                        <b><?=$key?></b>
                        <div class="colors">
                        <?php foreach ($children as $child) { ?>
                            <a href="<?php echo $child['href']; ?>" title="<?php echo $child['name']; ?>" style="background:<?php echo $child['color']; ?>"></a>
                        <?php } ?>
                        </div>
                    </li>
                    
                <? } ?>
            <? } ?>
        <? } ?>
        <? } ?>
        
        </ul>

        <div class="menu_footer">
        <div class="menu_footer_l">
            <a href="/katalog/na-zakaz/" class="btn light arrow">Кухни на заказ</a>
            <a href="/katalog/" class="btn arrow">Все кухни</a>
        </div>
        <div class="menu_footer_r">
            <div class="menu_footer_r_text">
            <p>Все кухни из каталога изготавливаются на заказ по индивидуальным размерам. Каждая модель может быть выполнена в любом формате, комплектации и цветовом решении.</p>
            <p>Хотите что-то эксклюзивное?<br>Закажите кухню полностью по вашему проекту!</p>
            </div>
            <a class="menu_footer_r_image" href="">
            <img src="images/new/svg/menu_footer_r_image.jpg" alt="Кухня по своему проекту">
            <span class="shadow"></span>
            <div class="img_text">Кухня по своему проекту</div>
            </a>
        </div>

        </div>
    </div>
    </div>

<?php } ?>