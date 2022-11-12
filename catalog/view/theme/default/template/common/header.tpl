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
<?php if ($store_id != 0) { ?>
<meta name="googlebot" content="noindex" />
<?php } ?>
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
<?php if (isset($og_description)) { ?>
<meta property="og:description" content="<?php echo $og_description; ?>" />
<?php } ?>
<?php if (isset($og_locale)) { ?>
<meta property="og:locale" content="<?php echo $og_locale; ?>" />
<?php } ?>

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script async type="text/javascript" src="https://www.aldas.ru/catalog/view/javascript/current-device.min.js"></script>

<link rel="manifest" href="https://www.aldas.ru//catalog/view/javascript/manifest.json">
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
html {overflow-y: scroll; }
@media screen and (min-width: 960px) {
  html {overflow-y: scroll; }
}
html, body {height: 100%; padding-right: 0!important; margin-left: 0!important; }
@font-face {font-family: 'Helvetica Neue'; src: local('Helvetica Neue Medium'), local('Helvetica-Neue-Medium'), url('catalog/view/theme/default/stylesheet/fonts/HelveticaNeueCyr-Medium.woff2') format('woff2'), url('catalog/view/theme/default/stylesheet/fonts/HelveticaNeueCyr-Medium.woff') format('woff'), url('catalog/view/theme/default/stylesheet/fonts/HelveticaNeueCyr-Medium.ttf') format('truetype'); font-weight: 500; font-style: medium; }
@font-face {font-family: 'Helvetica Neue'; src: local('Helvetica Neue Roman'), local('Helvetica-Neue-Roman'), url('catalog/view/theme/default/stylesheet/fonts/HelveticaNeueCyr-Roman.woff2') format('woff2'), url('catalog/view/theme/default/stylesheet/fonts/HelveticaNeueCyr-Roman.woff') format('woff'), url('catalog/view/theme/default/stylesheet/fonts/HelveticaNeueCyr-Roman.ttf') format('truetype'); font-weight: 400; font-style: normal; }

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
.container{padding:0; }
.linemenu2.pfixed{top:60px; }
.linemenu2.pfixed .hid{display:none; }
.linemenu2 .hid2{
  display:none;
}
.linemenu2.pfixed .hid2{
  display:block;
}
.search-form1.hid2{
  margin-top:2px;

}
.search-form1.hid2 input[name=search]{
  background: #FFF1F1;
  width: 100px;
  color: #9A9A9A;
  font-weight: 400;
}
@import url('https://fonts.googleapis.com/css?family=Lato:300,400,700');
/*.pfixed{position:fixed;top:0;z-index:99;width:100%;}*/
@media (min-width:992px){
.pfixed{position:fixed;top:0;z-index:99;width:100%;}
}
#menu .nav .open>a, #menu .nav .open>a:focus,#menu .nav .open>a:hover {
 background-color: #cf2f1e!important;
 border-color: #f1948a!important;
}
</style>
<style>
.d-flex{display:flex;}
.baseline{align-items: baseline;}
.acenter{align-items: center;}
.between{
  justify-content: space-between;
}
.menu_topn{
background: #EEEEEE;
}
.menu_topn a{
padding:0 20px;
position: relative;
font: 400 13px/30px Helvetica Neue;
color: #666666;
}
.menu_topn a+a:before{
  content:'';
  position: absolute;
  height: 17px;
  border-left:1px solid #707070;
  top:7px;
  left:0;
  opacity: 0.2;
}
.search-form1{position: relative;}
.search-form1 input[type=text],
.search-form1 input[type=search]{
  border:none;overflow:hidden;line-height:30px;
  background: #E2E2E2;
  padding: 0 5px 0 37px;
  width:100%;
  font: 400 13px/30px Helvetica Neue;
  /*color: #9A9A9A;*/
  color: #000;
  width: 320px;
  font-weight: 500;
}
.search1{
background:url(/image/svg/icon_search.svg) 0 0 no-repeat;
width:12px;height:12px;
cursor:pointer;position:absolute;left:14px;top:9px;border:none;
}
.camera img{margin:8px 9px 0 0!important;}


.header{display:flex;}
.wrap{flex-wrap: wrap;}
</style>
<style>
.logo{margin-top:10px;margin-bottom: 10px;margin-left: 20px;}
.logo img{max-width: 80%}
.address{
  font: 400 13px/17px Helvetica Neue;
  color: #777;
  margin-right: 25px;
}
.line{border-left: 1px solid #ddd;height: 55px;}
.address div{
  position: relative;
  padding-left: 21px;
}
.address div+div{
  margin-top:7px;
}
.address img{
  position: absolute;
  left:0;
  top: 1px;
}
.rasschet{
  background: #EEEEEE;
  border-radius: 4px;
 cursor:pointer;
 width: 185px;
}
.rasschet .ico{
  background: #F05544;
  border-radius: 4px;
  width: 55px;
  height: 55px;
  text-align: center;
}
.rasschet img{
  margin-top:13px!important;
}
.rasschet .txt{
  padding: 9px 22px 0 15px;
   font: 400 15px/17px Helvetica Neue;
  color: #F05544;
  width: 130px;
}
.vyzov{cursor:pointer;width: 190px;}
.vyzov .ico{margin-right:8px;}
.vyzov img{
  margin-top: 8px!important;
}
.vyzov .txt{
  padding: 9px 0 0 0;
  font: 400 15px/17px Helvetica Neue;
  color: #4DBEAF;
  text-decoration: underline;
}
.vyzov .txt:hover{text-decoration: none;}
.grafik .txt{
  font: 400 13px/15px Helvetica Neue;
  color: #444444;
}
.grafik .roistatphone{
  font-family: Helvetica Neue;
  font-size:21px;
  line-height:  26px;
  font-weight:500;
  color: #444444;
  padding:6px 0 1px;
  cursor:pointer;
  display:block;
}
.grafik{margin-top: 10px}
.grafik .callback{
  font: 400 13px/15px Helvetica Neue;
  color: #4DBEAF;
  cursor:pointer;
  text-decoration: underline;
}
.grafik .callback:hover{
	text-decoration: none;
}
.colorb{
  width: 32.4%;
}
.linemenu2{
/*background: transparent linear-gradient(180deg, #D03B2B 0%, #B43C2E 24%, #D03B2B 54%, #D03B2B 100%) 0% 0% no-repeat padding-box;*/
border-top:1px solid #FF887B;
background: #d03b2b;
background: -moz-linear-gradient(top,  #d03b2b 0%, #c63f33 14%, #d03b2b 46%, #c63f33 84%, #d03b2b 100%);
background: -webkit-linear-gradient(top,  #d03b2b 0%,#c63f33 14%,#d03b2b 46%,#c63f33 84%,#d03b2b 100%);
background: linear-gradient(to bottom,  #d03b2b 0%,#c63f33 14%,#d03b2b 46%,#c63f33 84%,#d03b2b 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d03b2b', endColorstr='#d03b2b',GradientType=0 );
}
.linemenu2 a{
  font: normal 13px/15px Helvetica Neue;
color: #FFFFFF;
padding:9px 20px 11px;

}
.linemenu2 a{
  border-left:1px solid #C63222
}
.linemenu2 a:last-child{
 border-right:1px solid #C63222
}
.linemenu2 a:hover{
  color:#fff;
}
@media (max-width:1200px){
  .rasschet .ico{
    width:32px;
    height:32px;
  }
  .rasschet img{
    width: 12px;
    margin-top:8px!important;
  }
  .vyzov .ico{
    width:32px;
    height:32px;
  }
  .vyzov img{width: 25px;margin-left:4px!important;}
  .vyzov, .rasschet{
    width: auto;
    white-space: nowrap;
  }
  .rasschet .txt{
   font: 400 13px/17px Helvetica Neue;
  }
  .vyzov .txt{
    font: 400 13px/17px Helvetica Neue;
  }
  .colorb{flex-direction: column;width:auto;}
}
@media (max-width:991px){
  .header{flex-wrap: wrap;}
  .menu_topn{flex-wrap: wrap;}
}
</style>
<div id="containerr" style="display:none;">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MRD8BSP"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div class="site-overlay"></div>
<div class="menu_topn h991">
  <div class="container">
    <div class="d-flex between wrap">
      <div class="d-flex wrap">
          <a href="about/">О нас</a>
          <a href="partnery/">Сотрудничество</a>
          <a href="contact/" onclick="yaCounter39342560.reachGoal('h_cont');return true;">Контакты</a>
          <div class="search-form1">
              <input type="text" name="search" value="<?php echo $search; ?>" placeholder="Поиск" />
              <input type="submit" value="" class="search1" />
          </div>
      </div>
        <a class="camera" href="otzyvy/"><img src="https://www.aldas.ru/image/svg/icon_camera.svg">Отзывы, и фото готовых заказов</a>
    </div>
  </div>
</div>

<div id="container" style="clear:both;">
    <header>
      <div class="container h991">
        <div class="header d-flex acenter between">
          <?php if ($logo) { ?>
               <div class="logo">
              <?php if ($home == $og_url) { ?>
               <img src="<?php echo $logo; ?>?v1" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
              <?php } else { ?>
                <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>?v1" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
              <?php } ?>
              </div>
            <?php } ?>
            <div class="line"></div>
            <div class="address">
              <? /*<div><img src="https://www.aldas.ru/image/svg/icon_location.svg">Улица Олеко Дундича, 19/15</div>*/ ?>
              <div><img src="https://www.aldas.ru/image/svg/icon_location.svg">Новорязанское ш., 1а<br>(ТЦ«Колибри», 2-ой этаж)</div>
            </div>
            <div class="d-flex between colorb">
              <div class="rasschet d-flex colorbox1">
                <div class="ico"><img src="https://www.aldas.ru/image/svg/img_kitchen.svg"></div>
                <div class="txt">Заказать расчет&nbsp;мебели</div>
              </div>
              <div class="vyzov d-flex colorbox3">
                <div class="ico"><img src="https://www.aldas.ru/image/svg/img_designer.svg"></div>
                <div class="txt">Вызвать дизайнера-замерщика</div>
              </div>
            </div>
            <div class="grafik">
              <div class="txt">Ежедневно с 09:00 до 20:00</div>
              <a class="roistatphone" href="tel:84993471227">8 (499) 347-12-27</a>
              <div class="callback colorbox2">Заказать обратный звонок</div>
            </div>

        </div>
        <div class="row1">
          <div class="wrapper">
            <!-- <div class="menu-btn riight"><i class="fa fa-bars"></i> Инфо</div> -->

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
        <div class="container menurow">
          <div class="logosm hide991">
            <?php if ($home == $og_url) { ?>
             <img style="width: 52%;" src="https://www.aldas.ru/image/logo-aldas-mob.svg" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" >
              <?php } else { ?>
                <a href="<?php echo $home; ?>"><img style="width: 52%;" src="https://www.aldas.ru/image/logo-aldas-mob.svg" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" ></a>
              <?php } ?>
          </div>
          <div class="d-flex">
            <div class="search-form1 hide991">
                <input type="search" name="search" value="<?php echo $search; ?>" placeholder="Поиск" />
                <input type="submit" value="" class="search2" />
            </div>
          <?php echo $categories; ?>
          </div>
        </div>
      </div>
      <div class="wrapper linemenu2 h991">
        <div class="container">
          <div class="d-flex">
            <a class="hid" href="/">Материалы и фасады</a>
            <a class="hid" href="dizain-mebel/">Бесплатный 3D проект</a>
            <a class="hid" href="mebel-v-rassrochku/">Рассрочка</a>
            <a class="hid" href="sborka_dostavka/">Сборка и доставка</a>
            <a href="contact/" onclick="yaCounter39342560.reachGoal('h_cont');return true;">Контакты</a>
            <a class="hid" href="otzyvy/">Отзывы, и фото готовых заказов</a>
            <a class="hid2" href="otzyvy/">Отзывы</a>
            <div class="search-form1 hid2">
                <input type="text" name="search" value="<?php echo $search; ?>" placeholder="Поиск" />
                <input type="submit" value="" class="search1" />
            </div>
          </div>
        </div>
      </div>




  </header>
<script>
  $('.search2').on('click',function(){
    $('.search-form1.hide991 input[type=search]').css('width','170px');
  })
  /*$('.tel2 .roistatphone').on('click',function(){
    alert('ok');
    window.location = $(this).attr('href');
  })*/
  $('.search-form1.hid2').focusin(function(){
    $('.search-form1.hid2 input[name="search"]').animate({width:"200"}, 200);
  }).focusout(function(){
    $('.search-form1.hid2 input[name="search"]').animate({width:"100"}, 200);
  });
</script>
