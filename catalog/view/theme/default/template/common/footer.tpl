<?
$display=false;
?>

<div class="container">
  <div class="row">
    <div class="footer">
      <div class="col-lg-8">© <?=date('Y', time());?> Студия “Альдас” - мебель от производителя на заказ в Москве и Mосковской области</div>
      <div class="col-lg-4" style="text-align: right"><a href="https://www.aldas.ru/privacypolicy/">Политика конфиденциальности</a></div>
    </div>
  </div>
</div>

<div id="send_success" class="modal">
  <div class="modal-dialog">
    <div class="modal-content">
       <div class="modal-body"></div>
    </div>
  </div>
</div>

</div>
</div>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<?php
/*вставляем калькулятор*/
$calc_tpl = file_get_contents(DIR_APPLICATION.'view/theme/default/template/product/calc.tpl');
echo $calc_tpl;

$this->welldone->addCss('catalog/view/theme/default/stylesheet/style.css?v4');
//$this->welldone->addCss('catalog/view/theme/default/stylesheet/pushy.css');

//$this->welldone->addJs('catalog/view/theme/welldone/js/vendor/jquery/jquery.js');
  $this->welldone->css_out();
  //$this->welldone->js_out();
?>

<script type="text/javascript">
  $(".spn_hol").fadeOut(200);
  $('#containerr').toggle(true);
  //stopProgress();
</script>
<script>
var nav = $('.linemenu');
var nav2 = $('.linemenu2');
var res = 0;
var temp_top = nav.offset().top+5;
$(window).scroll(function () {
  res = temp_top-$(this).scrollTop();
    if ($(this).scrollTop() >= temp_top) {
        nav.addClass("pfixed");
        nav2.addClass("pfixed");
    } else {
        nav.removeClass("pfixed");
        nav2.removeClass("pfixed");
    }
});
</script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<?php
    $this->welldone->addCss('catalog/view/theme/default/stylesheet/reset.css','footer');
    $this->welldone->addCss('catalog/view/theme/default/stylesheet/owl.carousel.css','footer');
    $this->welldone->addCss('catalog/view/theme/default/stylesheet/animate.css','footer');
    $this->welldone->css_out('footer');
?>

<? if($display) { ?>
<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/camera.css">
<? } ?>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo MAIN_SERVER.$style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<?php
    $this->welldone->addJs('catalog/view/javascript/jquery-migrate-1.2.1.min.js');
    $this->welldone->addJs('catalog/view/javascript/common.js?v1');
    //$this->welldone->addJs('catalog/view/javascript/pushy/pushy.js');
    $this->welldone->addJs('catalog/view/javascript/callback.js?v6');
    $this->welldone->addJs('catalog/view/javascript/jquery.easing.1.3.js');


    $this->welldone->js_out();
?>
<? if($display) { ?>
<script src="catalog/view/javascript/camera.js" type="text/javascript"></script>
<? } ?>
<script async src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" type="text/javascript"></script>

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo MAIN_SERVER.$script; ?>" type="text/javascript"></script>
<?php } ?>

<?php if(!$config_ga){ ?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','/downloadJs/js/analytics.js','ga');ga('create', 'UA-90655539-1', 'auto');  ga('send', 'pageview');
</script>
<?php } else { ?>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo $config_ga; ?>"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', '<?php echo $config_ga; ?>');
</script>
<?php } ?>
<!-- Варианты АВ -->
<script async type="text/javascript">
var yaParams={};
//jQuery(document).ready(function($) {
    yaParams.abс = '<?php echo $variat_abc; ?>';
    //console.log(yaParams.abс);
//});
</script>

<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(39342560, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true,
        trackHash:true,
        ecommerce:"dataLayer"
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/39342560" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
<?php if(!$config_metrika){ ?>
<?php } else {
echo $config_metrika;
 } ?>
 <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'/downloadJs/js/gtm.js';f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-MRD8BSP');</script>
<!-- End Google Tag Manager -->
 <script type="text/javascript" src="//api.venyoo.ru/wnew.js?wc=venyoo/default/science&widget_id=6282270828789760"></script>
<style>
<?php //if($admin){
//echo file_get_contents(DIR_ROOT.'catalog/view/theme/default/stylesheet/style_new.css');
//} ?>
.left{
width:0%;
}
</style>

<script>(function(w, d, s, h, id) { w.roistatProjectId = id; w.roistatHost = h; var p = d.location.protocol == "https:" ? "https://" : "http://"; var u = /^.*roistat_visit=[^;]+(.*)?$/.test(d.cookie) ? "/dist/module.js" : "/api/site/1.0/"+id+"/init?referrer="+encodeURIComponent(d.location.href); var js = d.createElement(s); js.charset="UTF-8"; js.async = 1; js.src = p+h+u; var js2 = d.getElementsByTagName(s)[0]; js2.parentNode.insertBefore(js, js2);})(window, document, 'script', 'cloud.roistat.com', 'fb8f1455492cbdbb0770445021890755');</script>

<script type="text/javascript">!function(){var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src="https://vk.com/js/api/openapi.js?169",t.onload=function(){VK.Retargeting.Init("VK-RTRG-1132490-9k1wO"),VK.Retargeting.Hit()},document.head.appendChild(t)}();</script><noscript><img src="https://vk.com/rtrg?p=VK-RTRG-1132490-9k1wO" style="position:fixed; left:-999px;" alt=""/></noscript>

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '2946387862245231');
fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=2946387862245231&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->

<meta name="facebook-domain-verification" content="ftpujtj1x8sbtvs58zmbdll4zj0q4x" />

<!-- Marquiz script start -->
<script>
(function(w, d, s, o){
var j = d.createElement(s); j.async = true; j.src = '//script.marquiz.ru/v2.js';j.onload = function() {
if (document.readyState !== 'loading') Marquiz.init(o);
else document.addEventListener("DOMContentLoaded", function() {
Marquiz.init(o);
});
};
d.head.insertBefore(j, d.head.firstElementChild);
})(window, document, 'script', {
host: '//quiz.marquiz.ru',
region: 'eu',
id: '6157674f134f7b003fffe2eb',
autoOpen: false,
autoOpenFreq: 'once',
openOnExit: false,
disableOnMobile: false
}
);
</script>
<!-- Marquiz script end -->

</body></html>