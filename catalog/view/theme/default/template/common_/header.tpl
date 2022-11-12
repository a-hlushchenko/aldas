<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="manifest" href="/catalog/view/javascript/manifest.json">
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>


<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="spn_hol">
    <div class="spinner">
        <div class="bounce1"></div>
        <div class="bounce2"></div>
        <div class="bounce3"></div>
    </div>
</div>
<style>
.roistat-promo-wrap{display:none!important;}
.spn_hol {position: fixed;top: 0;left: 0;right: 0;bottom: 0;background: #fff;z-index: 50000;opacity: 1;-webkit-transition: all 1s;-moz-transition: all 1s;-o-transition: all 1s;transition: all 1s;}
.spinner {position: absolute;top: 50%;margin-top: -12px;left: 50%;margin-left: -35px;height: 24px;width: 70px;text-align: center;display: block;}
.spinner > div {width: 18px;height: 18px;background-color: #333;border-radius: 100%;display: inline-block;-webkit-animation: bouncedelay 1.4s infinite ease-in-out;animation: bouncedelay 1.4s infinite ease-in-out;-webkit-animation-fill-mode: both;animation-fill-mode: both;}
.spinner .bounce1 {-webkit-animation-delay: -0.32s;animation-delay: -0.32s;}
.spinner .bounce2 {-webkit-animation-delay: -0.16s;animation-delay: -0.16s;}
@-webkit-keyframes bouncedelay {
0%, 80%, 100% {-webkit-transform: scale(0.0)}
40% {-webkit-transform: scale(1.0)}
}
@keyframes bouncedelay {
0%, 80%, 100% {transform: scale(0.0);-webkit-transform: scale(0.0);}
40% {transform: scale(1.0);-webkit-transform: scale(1.0);}
}
</style>
<style>
*{
-webkit-transition-duration: 0.3s;
-o-transition-duration: 0.3s;
-moz-transition-duration: 0.3s;
transition-duration: 0.3s;
}
@import url('https://fonts.googleapis.com/css?family=Lato:300,400,700');
.nav>li.logo_menu{display:none;}
.nav>li.logo_menu img{height:32px;margin-right:10px;}
.nav>li.tel2{display:none;}
.nav>li.tel2 .roistatphone:before{display:none;}
.nav>li.tel2 a{font-size:20px;padding:2px 17px 7px;}
.pfixed{position:fixed;top:0;z-index:99;width:100%;}
.pfixed .h1200{display:none;}
.pfixed .nav>li.logo_menu{display:block;}
.pfixed .nav>li.tel2{display:block;}
#menu .nav .open>a, #menu .nav .open>a:focus,#menu .nav .open>a:hover {

 background-color: #cf2f1e!important;
 border-color: #f1948a!important;
}
.nav>li>a:focus, .nav>li>a:hover{
    background:none!important;}
</style>
<style>
.menu_top{background:#332d27;}
</style>

<div id="containerr" style="display:none;">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MRD8BSP"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="site-overlay"></div>
<?php echo $categories_push; ?>
<div class="menu_top">
<div class="container fmenu">
  <nav class="pushy riight pushy-right">
    <ul class="menu">
      <li><a href="otzyvy/">ПРИМЕРЫ РАБОТ И ОТЗЫВЫ</a></li>
      <li><a href="about/">О нас</a></li>
      <li><a href="kuhni-v-rassrochku/">Рассрочка</a></li>
      <li><a href="sborka_dostavka/">Сборка и доставка</a></li>
      <li><a href="dizain-kyhni/">3D дизайн</a></li>
      <li><a href="partnery/">Сотрудничество</a></li>
      <li><a href="contact/" onclick="yaCounter39342560.reachGoal('h_cont');return true;">Контакты</a></li>
    </ul>
  </nav>
</div>
</div>
<div id="container" style="clear:both;">
    <header>
      <div class="container">
        <div class="row1">
          <div class="wrapper header">
            <div class="menu-btn riight"><i class="fa fa-bars"></i> Инфо</div>
            <?php if ($logo) { ?>
              <div class="logo-pad">
              <?php if ($home == $og_url) { ?>
                <div class="logo"><img src="<?php echo $logo; ?>?v4" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></div>
              <?php } else { ?>
                <a href="<?php echo $home; ?>" class="logo"><img src="<?php echo $logo; ?>?v4" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
              <?php } ?>
              </div>
            <?php } ?>

            <div class="header-center">
              <div class="txt">
                  Вызовите замерщика-консультанта<br/>или закажите предварительный расчет проекта:
              </div>
              <div class="call_but">
              <div class="colorbox3">Вызвать дизайнера<span>–замерщика</span></div>
              <div class="colorbox1">Заказать расчет<span> кухни</span></div>
              </div>
            </div>
            
            <div class="header-right">
              <div class="flex">
                <div class="leftt">
                	<div class="txt">Ежедневно с 09:00 до 20:00</div>
                    <div><a class="roistatphone" href="tel:84993471227" style="margin-top:10px;">8 (499) 347-12-27</a></div>
                    <!-- <div class="mail"><a href="mailto:info@aldas.ru" target="_blank"> info@aldas.ru</a></div> -->
                    <div class="callback colorbox2" style="margin-top:10px;">Заказать обратный звонок</div>
                </div>
                <div class="rightt">
                	<div class="txt">Адреса салонов</div>
                  <div class="addr1">Пр-кт Маршала Жукова,1с1</div>
                  <div class="addr2">Новорязанское ш., 1а<br><span>(ТЦ«Колибри», 2-ой этаж)</span></div>
                </div>
              </div>
              
            </div>

            <div class="hidden" itemscope itemtype="https://schema.org/LocalBusiness" >
              <span itemprop="name" class="hidden">Фабрика кухонь "Кухни Альдас"</span>
              <img itemprop="logo"  class="hidden" src="<?php echo $logo; ?>" alt="<?php echo $name; ?>"/>
              <a href="mailto:info@aldas.ru" itemprop="email" class="itememail">info@aldas.ru</a>
              <img src="<?php echo $logo; ?>" itemprop="image" alt="mebel-bruno.ru" class="hidden"/>
              <span itemprop="url" class="hidden"><?php echo $base; ?></span>
              <div itemprop="address" itemscope itemtype="https://schema.org/PostalAddress" class="hidden">
                <span itemprop="streetAddress">улица Авиаконструктора Миля, 26</span>
                <span itemprop="addressLocality">Москва</span>
              </div>
              <div itemprop="telephone">8-499-347-12-27</div>    
              <time itemprop="openingHours" content="Mo-Su 9:00−20:00">Ежедневно с 9-00 до 21-00</time>
            </div>

          </div>
          
        </div>
      </div>
      
      <div class="wrapper linemenu">
        <div class="container">
          <div class="menu-btn leeft visible-xs visible-sm"><i class="fa fa-bars"></i> Меню</div>
          <?php echo $categories; ?>
          
          <div id="search-form1">
            <fieldset>
              <label><input type="text" name="search" value="<?php echo $search; ?>" placeholder="Поиск" /></label>
               <input type="submit" value="" class="search1" />
            </fieldset>
          </div>
        </div>
      </div>
    </header>
<script>
  /*$('.tel2 .roistatphone').on('click',function(){
    alert('ok');
    window.location = $(this).attr('href');  
  })*/
  
</script>