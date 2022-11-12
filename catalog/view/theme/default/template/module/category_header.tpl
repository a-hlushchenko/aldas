<?php if ($categories) { ?>
    <script src="https://www.aldas.ru/catalog/view/javascript/chosen/chosen.jquery.js" type="text/javascript"></script>
    <style>
        /*#menu .dropdown .dropdown-menu.firstbl, #menu .dropdown-menu.firstbl .dropdown-menu {
            display:block;
        }*/

        <?php
        echo file_get_contents(DIR_ROOT.'catalog/view/javascript/chosen/chosen.css');
        ?>
        .navbar-nav{float:none!important}
        .chosen ul{padding:0}
        .all-catalog{justify-content:space-between;padding:22px 0 7px}
        .all-catalog a{text-decoration:underline;font:normal 13px/17px 'Helvetica Neue';color:#4DBEAF}
        @media (max-width: 768px) {
        .all-catalog{display:block!important}
        [data-control="close-menu"]{display:none}
        }
        .boxr{border:1px dashed #4DBEAF;border-radius:15px;padding:25px}
        .boxr .ico{margin-right:29px;position:relative}
        .boxr .ico span{display:block;position:absolute;top:-8px;right:-8px;width:28px;height:28px;background:#FFF 0 0 no-repeat padding-box;box-shadow:0 3px 6px #00000029;border-radius:100%;display:flex;align-items:center;justify-content:center}
        .boxr .txt1{font:normal 13px/17px Helvetica Neue;letter-spacing:0;color:#777}
        .boxr .txt2{font:normal 13px/17px Helvetica Neue;color:#333;padding-top:12px}
        .boxr .but{background:#DDB677 0 0 no-repeat padding-box;border-radius:4px;font:normal 13px/15px Helvetica Neue;color:#FFF;padding:9px 20px 11px 21px !important;text-decoration:none;height:35px;margin-left:25px;margin-top:10px}
        #menu .nav > li > a svg{position:absolute;left:20px;top:16px}
        .cat20:hover svg path,.vst:hover svg path{fill:#e74c3c}
        .cat20 > a{font:normal 15px/18px 'Helvetica Neue'!important;}
        .cat133 > a{padding-left:75px!important;font:normal 15px/18px 'Helvetica Neue'!important}
        .vst > a{font:normal 15px/18px 'Helvetica Neue'!important}
        .navbar{width:100%}
        .navbar-nav > li.mzakaz{padding-left:30px}
        .mzakaz svg{position:absolute!important;right:15px;left:auto!important;top:10px!important}
        .mzakaz svg path{fill:#fff}
        .mzakaz,.online-calc{padding-top:10px!important;padding-bottom:6px!important}
        .mzakaz a{box-shadow:0 3px 6px #00000029;border:1px solid #FFF!important;border-radius:4px;background:url(https://www.aldas.ru/image/svg/icon_link_logo.png) 7px 2px no-repeat;padding-right:36px!important;padding-top:8px!important;padding-bottom:8px!important}
        .online-calc a{padding-top:7px!important;padding-bottom:7px!important;position:relative}
        .ln{height:35px;position:absolute;margin-left:-13px;margin-top:-8px;opacity:.2;border-left:1px solid #EC5342}
        .navbar-nav > li.mzakaz:hover{background:none}
        #menu > .collapse > .nav > li.mzakaz:hover a{color:#fff!important;background:url(https://www.aldas.ru/image/svg/icon_link_logo.png) 7px -1px no-repeat!important}
        .mzakaz div{margin-left:31px;font-weight:500;font-size:15px;line-height:18px;font-family:'Helvetica Neue';border-bottom:1px dashed #FFF}
        .online-calc{float:right!important;border:none!important}
        .online-calc > a,.online-calc > a:focus{background:#fff url(https://www.aldas.ru/image/svg/icon_menu_calct.svg) 12px 8px no-repeat!important;padding-left:50px!important;border:1px solid #fff;border-radius:4px;font-weight:500;font-size:13px!important;line-height:19px;font-family:'Helvetica Neue';color:#D03B2B!important}
        .navbar-nav > li.online-calc:hover{background:none}
        #menu > .collapse > .nav > li > a:focus{background:none}
        #menu > .collapse > .nav > li.online-calc:hover a{color:#e74c3c!important;background:#fff url(https://www.aldas.ru/image/svg/icon_menu_calct.svg) 12px 8px no-repeat!important}
        .close-menu{-webkit-appearance:none;padding:0;cursor:pointer;background:0 0;border:0;font-size:21px;font-weight:700;line-height:1;color:#000;text-shadow:0 1px 0 #fff;filter:alpha(opacity=20);opacity:.2;position:absolute;right:13px;top:10px}
        @media (max-width: 1200px) {
        .ln{display:none}
        .online-calc > a,.online-calc > a:focus{text-indent:-9999px;padding-left:35px!important;padding-right:0!important;background-position:10px 5px}
        #menu > .collapse > .nav > li.online-calc:hover a{background:#fff url(https://www.aldas.ru/image/svg/icon_menu_calct.svg) 12px 8px no-repeat!important}
        .mzakaz a{padding-top: 5px!important;padding-bottom: 5px!important;}
        }
        .hovnone:hover{
            background:none!important;
        }
    </style>
    <nav id="menu" class="navbar menu">
        <div class="navbar-header">
            <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-ex1-collapse"><?php echo file_get_contents(DIR_IMAGE . 'svg/mobile_icon_menu.svg'); ?></button>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <?php //echo file_get_contents(DIR_IMAGE . 'svg/icon_menu_kitchen.svg'); ?>
            <ul class="nav navbar-nav">
                <li class="hovnone" style="line-height:18px;height:58px;padding: 17px 17px;border-left:none;"><?php echo file_get_contents(DIR_IMAGE . 'svg/icon_menu_kitchen.svg'); ?></li>
                <?php $first = true;
                foreach ($categories as $keyy => $category) { ?>
                    <?php if ($category['children']) { ?>
                        <li class="dropdown cat<?php echo $keyy; ?>"><a href="<?php //echo $children['href']; ?>"
                                                                        class="dropdown-toggle" data-toggle="dropdown">
                                <?php if ($keyy == 20) { ?>
                                    <?php //echo file_get_contents(DIR_IMAGE . 'svg/icon_menu_kitchen.svg'); ?>
                                <?php } ?>
                                <?php echo $category['name']; ?></a>
                            <div class="dropdown-menu first <?php if ($first) { ?>firstbl<?php $first = false;
                            } ?>">
                                <button type="button" class="close-menu" data-control="close-menu">×</button>
                                <div class="dropdown-inner d-flex" style="display:flex;">
                                    <div class="main_menu">
                                        <ul class="list-unstyled keys">
                                            <?php foreach ($category['children'] as $key => $children) {
                                                if ($key == '') {
                                                    continue;
                                                } ?>
                                                <li class="dropdown key"><a href="<?php //echo $children['href']; ?>"
                                                                            class="dropdown-toggle"
                                                                            data-toggle="dropdown"><?php echo $key; ?></a>
                                                    <div class="dropdown-menu">
                                                        <div class="dropdown-inner">
                                                            <?php if ($key != 'Цвет') { ?>
                                                                <?php if (count($children) > 10) { ?>
                                                                    <?php foreach (array_chunk($children,
                                                                        ceil(count($children) / 2)) as $child) { ?>
                                                                        <ul class="list-unstyled">
                                                                            <?php foreach ($child as $chil) { ?>
                                                                                <li>
                                                                                    <a href="<?php echo $chil['href']; ?>"
                                                                                       title="<?php echo $chil['name']; ?>"
                                                                                       data-imagecat="https://www.aldas.ru/<?php echo $chil['image']; ?>"><?php echo $chil['name']; ?></a>
                                                                                </li>
                                                                            <?php } ?>
                                                                        </ul>
                                                                    <?php } ?>
                                                                <?php } else { ?>

                                                                    <ul class="list-unstyled">
                                                                        <?php foreach ($children as $child) { ?>
                                                                            <li><a href="<?php echo $child['href']; ?>"
                                                                                   title="<?php echo $child['name']; ?>"
                                                                                   data-imagecat="https://www.aldas.ru/<?php echo $child['image']; ?>"><?php echo $child['name']; ?></a>
                                                                            </li>
                                                                        <?php } ?>
                                                                        <?php if (0 && $key == 'Кухни') { ?>
                                                                            <!-- <li><a href="katalog/">Каталог кухонь</a></li> -->
                                                                        <?php } ?>
                                                                    </ul>
                                                                <?php } ?>
                                                            <?php } else { ?>
                                                                <select class="chosen"
                                                                        onchange="location = this.value;">
                                                                    <?php foreach ($children as $child) { ?>
                                                                        <option value="<?php echo $child['href']; ?>"
                                                                                title="<?php echo $child['name']; ?>" <?php if ($child['color']) { ?>style="background:<?php echo $child['color']; ?>" <?php } ?>">&nbsp;<?php //echo $child['name']; ?></option>
                                                                    <?php } ?>
                                                                </select>
                                                                <div class="all_ral">Всего доступно 1000 цветов по
                                                                    раскладе RAL
                                                                </div>
                                                            <?php } ?>
                                                        </div>
                                                    </div>
                                                </li>
                                            <?php } ?>
                                        </ul>
                                        <div class="mor_box">
                                            <div class="d-flex all-catalog">
                                                <a href="/katalog/na-zakaz/" class="bold-a">Кухни на заказ</a>
                                                <a href="katalog/">Весь каталог на одной странице</a>
                                            </div>
                                            <noindex>
                                            <div class="d-flex boxr">
                                                <div class="ico"><img
                                                        src="https://www.aldas.ru/image/svg/img_size_01.svg"><span><img
                                                            src="https://www.aldas.ru/image/svg/img_size_02.svg"></span>
                                                </div>
                                                <div class="text">
                                                    <div class="txt1">Все кухни из каталога изготавливаются на заказ по
                                                        индивидуальным размерам. Каждая модель может быть выполнена в
                                                        любом формате, комплектации и цветовом решении.
                                                    </div>
                                                    <div class="d-flex d2">
                                                        <div class="txt2">Хотите что-то эксклюзивное? <br>Закажите кухню
                                                            полностью по вашему проекту!
                                                        </div>
                                                        <a href="#" class="but colorbox1" onclick="return false;">Кухня
                                                            по своему проекту</a>
                                                    </div>
                                                </div>
                                            </div>
                                            </noindex>
                                        </div>

                                    </div>
                                    <div class="d-flex main_image">
                                        <img src="<?php echo $image; ?>" title="Каталог кохонь" alt="Каталог кохонь">
                                    </div>

                                </div>
                            </div>
                        </li>
                    <?php } elseif (0 && $category['children2']) { ?>

                        <li class="dropdown cat<?php echo $keyy; ?>"><a href="<?php //echo $children['href']; ?>"
                                                                        class="dropdown-toggle" data-toggle="dropdown">
                                <?php if ($keyy == 133) { ?>
                                    <?php echo file_get_contents(DIR_IMAGE . 'svg/icon_menu_mebel.svg'); ?>
                                <?php } ?>
                                <?= $category['name']; ?></a>
                            <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <?php foreach ($category['children2'] as $child) { ?>
                                            <li>
                                                <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </div>

                        </li>
                    <?php } ?>
                <?php } ?>

                <!-- <li class="vst">
                    <a href="/vse_dlya_kukhni/stoly-i-stulja/"><?php //echo file_get_contents(DIR_IMAGE . 'svg/icon_menu_mebel.svg'); ?>Столы и стулья</a></li> -->
                <li class="vst"><a href="/shkafy/">Шкафы</a></li>
                <li class="vst"><a href="/prihozhie/">Прихожие</a></li>
                <li class="vst"><a href="/mebel-dlya-spalni/">Спальни</a></li>
                <li class="vst"><a href="/detskie/">Детские</a></li>
                <li class="vst"><a href="/gostinyie/">Гостиные</a></li>
                <li class="vst"><a href="/garderobnyie/">Гардеробные</a></li>
                <li class="vst"><a href="/kabinety/">Кабинеты</a></li>
                <!-- <li class="vst">
                    <a href="/vse_dlya_kukhni/tehnika-dlja-kuhni/"><?php //echo file_get_contents(DIR_IMAGE . 'svg/icon_menu_tech.svg'); ?>
                        Встраиваемая техника</a></li> -->
                <li class="hide991 ad"><a href="material-fasadi/">Материалы и фасады</a></li>
                <li class="hide991 ad"><a href="dizain-kyhni/">Бесплатный 3D проект</a></li>
                <li class="hide991 ad"><a href="kuhni-v-rassrochku/">Рассрочка</a></li>
                <li class="hide991 ad"><a href="sborka_dostavka/">Сборка и доставка</a>
                <li class="hide991 ad"><a href="contact/">Контакты</a>
                <!-- <li class="mzakaz"><a href="https://mebel-bruno.ru/">
                        <div>Мебель на
                            заказ<?php echo file_get_contents(DIR_IMAGE . 'svg/mobile_icon_link.svg'); ?></div>
                    </a></li> -->
                <li class="online-calc h991"><a href="#" class="ff3" onclick="return false;">
                        <div class="ln"></div>
                        Online калькулятор</a></li>
                <li class="colorbox1 hide991 d-flex">
                    <div class="ico"><img src="https://www.aldas.ru/image/svg/img_kitchen.svg"></div>
                    <div class="txt">Заказать расчет кухни</div>
                </li>
                <li class="colorbox3 hide991 d-flex">
                    <div class="ico"><img src="https://www.aldas.ru/image/svg/img_designer.svg"></div>
                    <div class="txt">Вызвать дизайнера-замерщика</div>
                </li>
            </ul>

        </div>
    </nav>

<?php } ?>
<script>
    $('[data-imagecat]').on('mouseover', function () {
        image = $(this).data('imagecat');
        if (image) {
            $('.main_image img').attr('src', image);
        }
    })
    $('.dropdown-inner .chosen').on('click', function () {
        return false;
    });
    $('.dropdown-menu .chosen-container').on('click', function () {
        return false;
    });

    <?php /*$('#menu .nav > li').on('mouseover',function(){
		if($('html').hasClass('desktop')){
			$('#menu .nav > li').removeClass('open');
		}
	});*/
    /*$(function(){
        $('.dropdown').on('show.bs.dropdown', function(e){
            $(this).find('.dropdown-menu').first().stop(true, true).slideDown();
        });
        $('.dropdown').on('hide.bs.dropdown', function(e){
            e.preventDefault();
              var self = this;
            $(this).find('.dropdown-menu').first().stop(true, true).slideUp(400, function(){
                $(self).removeClass('open');
                $(self).find('.dropdown-toggle').attr('aria-expanded','false');
            });
        });
    });
    */ ?>
</script>
<script type="text/javascript">
    $(".chosen").chosen({
        disable_search_threshold: 5,
        "disable_search": true
    });
    $('.dropdown-menu .chosen-single').on('click', function () {
        return false;
    });
    //show,shown,hide,hidden
    //$(document).on("click.bs.dropdown", function (e) { e.stopPropagation() });
    $('.navbar-collapse').on('hidden.bs.collapse', function () {
        $('.navbar-toggle').toggleClass('active');
    })
    $('.navbar-collapse').on('shown.bs.collapse', function () {
        $('.navbar-toggle').toggleClass('active');
    })
    $('#menu .dropdown-inner .key>a').on('click', function () {
        if ($('html').hasClass('mobile')) {
            $(this).next().slideToggle();
            $(this).parent().toggleClass('open');
        }
        return false;
    });
    $('#menu').on('hide.bs.dropdown', function () {
        if ($('html').hasClass('desktop')) {
            return false;
        }
    });
    $('[data-control="close-menu"]').click(function(e) {
        $(this).parent().toggle();
    });
    $('.dropdown-toggle').click(function(e) {
        e.preventDefault();
        var container = $(this).parent().find('.dropdown-menu.first');
        container.toggle();
    });


    $(document).mouseup(function (e) {
        var container = $('.dropdown-menu.first');
        if (container.has(e.target).length === 0){
            container.hide();
        }
    });

    <?php
    /*$(document).ready(function () {
      $(".navbar-toggle").on("click", function () {
        $(this).toggleClass("active");
      });
       $(document).on('click',function(){
          if ($('.navbar-toggle').hasClass('active') ) {
            $('.collapse').collapse('hide');
            $(this).toggleClass("active");
          }
      });
    });*/ ?>
</script>