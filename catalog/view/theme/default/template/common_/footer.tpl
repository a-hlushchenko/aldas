<?
$display=false;
?>

<div class="container">
  <div class="row">
    <div class="footer">
      <div>© <?=date('Y', time());?> Студия “Альдас” - кухни от производителя на заказ в Москве и Mосковской области</div>
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
$this->welldone->addCss('catalog/view/theme/default/stylesheet/style.css?v3');
$this->welldone->addCss('catalog/view/theme/default/stylesheet/pushy.css');

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
var res = 0;
var temp_top = nav.offset().top+5;
$(window).scroll(function () {
  res = temp_top-$(this).scrollTop();
    if ($(this).scrollTop() >= temp_top) {
        nav.addClass("pfixed");
    } else {
        nav.removeClass("pfixed");
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
    $this->welldone->addJs('catalog/view/javascript/pushy/pushy.js');
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
<script async type="text/javascript">(function (d, w, c) {(w[c] = w[c] || []).push(function() {try {w.yaCounter39342560 = new Ya.Metrika({id:39342560,clickmap:true,trackLinks:true,accurateTrackBounce:true,webvisor:true,trackHash:true,params: yaParams});} catch(e) { }});var n = d.getElementsByTagName("script")[0],s = d.createElement("script"),f = function () { n.parentNode.insertBefore(s, n); };s.type = "text/javascript";s.async = true;s.src = "https://mc.yandex.ru/metrika/watch.js";if (w.opera == "[object Opera]") {d.addEventListener("DOMContentLoaded", f, false);} else { f(); }})(document, window, "yandex_metrika_callbacks");</script>

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
</body></html>