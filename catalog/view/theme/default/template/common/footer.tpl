</div>

<div class="footer">

	<div class="bl10">
		<div class="bl10_wrapper">
			<a class="menu_footer_r_image" href="katalog/">
				<img src="images/new/bl10_1.jpg" alt="Кухня на заказ">
				<span class="shadow"></span>
				<div class="img_text">Кухня на заказ</div>
			</a>
			<a class="menu_footer_r_image" href="#consultation" data-modal="consultation">
				<img src="images/new/bl10_2.jpg" alt="Кухня по своему проекту">
				<span class="shadow"></span>
				<div class="img_text">Мебель по своему проекту</div>
			</a>
			<a class="menu_footer_r_image" href="#call_design" data-modal="call_design">
				<img src="images/new/bl10_3.jpg" alt="Вызвать дизайнера-замерщика">
				<span class="shadow"></span>
				<div class="img_text">Вызвать дизайнера-замерщика</div>
			</a>
		</div>
	</div>

	<div class="bl11">
		<div class="row_title">
			<h3>Мебель</h3>
		</div>
		<div class="bl11_items">
			<a href="/shkafy/" class="bl11_item">Шкафы</a>
			<a href="/prihozhie/" class="bl11_item">Прихожие</a>
			<a href="/mebel-dlya-spalni/" class="bl11_item">Спальни</a>
			<a href="/detskie/" class="bl11_item">Детские</a>
			<a href="/gostinyie/" class="bl11_item">Гостиные</a>
			<a href="/garderobnyie/" class="bl11_item">Гардеробные</a>
			<a href="/kabinety/" class="bl11_item">Кабинеты</a>
		</div>

		<div class="row_title">
			<h3>Кухни</h3>
		</div>
		<div class="h_menu">
			<?= $categories ?>
		</div>
	</div>
	<div class="footer_menu">
		<div class="container">
			<a href="/about/">О нас</a>
			<a href="/otzyvy/">Отзывы c фото заказов</a>
			<a href="">Материалы и фасады</a>
			<a href="/dizain-mebel/">Бесплатный 3D проект</a>
			<a href="/mebel-v-rassrochku/">Рассрочка</a>
			<a href="/sborka_dostavka/">Сборка и доставка</a>
			<a href="">Сотрудничество</a>
			<a href="/contact/">Контакты</a>
		</div>
	</div>
	<div class="contact container">
		<div class="year">© <?= date('Y', time()); ?> Студия “Альдас” - мебель от производителя <wbr>на заказ в Москве и Mосковской области</div>
		<a class="politic" href="privacypolicy/">Политика <wbr>конфиденциальности</a>
		<div class="address">
			<img src="images/new/svg/location.svg" alt="Алдас">
			<div>2-й Грайвороновский проезд, 44 к2 <wbr>(Посещение по записи)</div>
		</div>
		<div class="tel_time">
			<div class="time">Ежедневно с 09:00 до 20:00</div>
			<a href="tel:+7 (499) 347-12-27" class="tel roistat">+7 (499) 347-12-27</a>
		</div>
		<a href="#consultation" data-modal="consultation" class="btn light">Заказать консультацию</a>
	</div>
</div>
</div>

<div id="otzyv" class="container_form">
	<div class="form_wrapper">
		<div class="form_close btn"><svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path>
				<path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path>
			</svg></div>
		<div class="form_center otzyv_content">

		</div>
	</div>
</div>
<a href="#otzyv" data-modal="otzyv"></a>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		$('.caption').on('click', function(e) {
			e.preventDefault();

			$.ajax({
				url: 'index.php?route=news/article/get_article',
				type: 'POST',
				data: {
					article_id: $(this).data('id'),
				},
				success: function(json) {
					console.log(json);
					if (json['html']) {
						$('#otzyv .otzyv_content').html(json['html']);
						$('[data-modal="otzyv"]').click();
						var swiper = new Swiper("#otzyv_swiper", {
						paginationClickable: true,
						slidesPerView: 1,

						pagination: {
							el: ".swiper-pagination",
							clickable: true,
						},
						navigation: {
							nextEl: ".button-next",
							prevEl: ".button-prev",
						},
						});

					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		});
	});
</script>

<link href="/catalog/view/javascript/nice-select2/css/nice-select2.css" rel="stylesheet" />
<link href="/catalog/view/javascript/datatables/datatables.min.css" rel="stylesheet" />

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<script src="/catalog/view/javascript/nice-select2/js/nice-select2.js"></script>
<script src="/catalog/view/javascript/mask/jquery.mask.min.js"></script>
<script src="/catalog/view/javascript/datatables/datatables.min.js"></script>
<script src="js/common.js"></script>

<script>
	var swiper = new Swiper(".mainSwiper", {
		preloadImages: false,
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
		navigation: {
			nextEl: ".button-next",
			prevEl: ".button-prev",
		},
	});
	var swiper = new Swiper(".mainSwiper2", {
		pagination: {
			el: ".swiper-pagination",
		},
		navigation: {
			nextEl: ".button-next",
			prevEl: ".button-prev",
		},
	});



	var swiper = new Swiper(".product_images_slider", {
		pagination: {
			el: ".swiper-pagination",
			clickable: true,
		},
		paginationClickable: true,
		nested: true,
		spaceBetween: 24,
	});
</script>

<?php

/*вставляем калькулятор*/
//$calc_tpl = file_get_contents(DIR_APPLICATION.'view/theme/default/template/product/calc.tpl');
//echo $calc_tpl;

//$this->welldone->addCss('catalog/view/theme/default/stylesheet/style.css?v4');
//$this->welldone->addCss('catalog/view/theme/default/stylesheet/pushy.css');

//$this->welldone->addJs('catalog/view/theme/welldone/js/vendor/jquery/jquery.js');
//$this->welldone->css_out();
//$this->welldone->js_out();
?>



<?php
//    $this->welldone->addCss('catalog/view/theme/default/stylesheet/reset.css','footer');
//    $this->welldone->addCss('catalog/view/theme/default/stylesheet/owl.carousel.css','footer');
//    $this->welldone->addCss('catalog/view/theme/default/stylesheet/animate.css','footer');
//    $this->welldone->css_out('footer');
?>


<?php
foreach ($styles as $style) { ?>
	<link href="<?php echo MAIN_SERVER . $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php }
?>

<?php
//$this->welldone->addJs('catalog/view/javascript/jquery-migrate-1.2.1.min.js');
//$this->welldone->addJs('catalog/view/javascript/common.js?v1');
//$this->welldone->addJs('catalog/view/javascript/pushy/pushy.js');
//$this->welldone->addJs('catalog/view/javascript/callback.js?v6');
//$this->welldone->addJs('catalog/view/javascript/jquery.easing.1.3.js');


//$this->welldone->js_out();
?>

<!-- <script src="/catalog/view/javascript/callback.js?v6"></script> -->
<?php //$scripts = [];
foreach ($scripts as $script) { ?>
	<script src=" <?php echo MAIN_SERVER . $script; ?>" type="text/javascript"></script>
<?php } ?>

<?php if (!$config_ga) { ?>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o),
				m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script', '/downloadJs/js/analytics.js', 'ga');
		ga('create', 'UA-90655539-1', 'auto');
		ga('send', 'pageview');
	</script>
<?php } else { ?>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo $config_ga; ?>"></script>
	<script>
		window.dataLayer = window.dataLayer || [];

		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', '<?php echo $config_ga; ?>');
	</script>
<?php } ?>


<!-- Yandex.Metrika counter -->
<script type="text/javascript">
	(function(m, e, t, r, i, k, a) {
		m[i] = m[i] || function() {
			(m[i].a = m[i].a || []).push(arguments)
		};
		m[i].l = 1 * new Date();
		k = e.createElement(t), a = e.getElementsByTagName(t)[0], k.async = 1, k.src = r, a.parentNode.insertBefore(k, a)
	})
	(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

	ym(39342560, "init", {
		clickmap: true,
		trackLinks: true,
		accurateTrackBounce: true,
		webvisor: true,
		trackHash: true,
		ecommerce: "dataLayer"
	});
</script>
<noscript>
	<div><img src="https://mc.yandex.ru/watch/39342560" style="position:absolute; left:-9999px;" alt="" /></div>
</noscript>
<!-- /Yandex.Metrika counter -->
<?php if (!$config_metrika) { ?>
<?php } else {
	echo $config_metrika;
} ?>
<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start': new Date().getTime(),
			event: 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0],
			j = d.createElement(s),
			dl = l != 'dataLayer' ? '&l=' + l : '';
		j.async = true;
		j.src =
			'/downloadJs/js/gtm.js';
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-MRD8BSP');
</script>
<!-- End Google Tag Manager -->
<script async src="//api.venyoo.ru/wnew.js?wc=venyoo/default/science&widget_id=6282270828789760"></script>;


<script>
	(function(w, d, s, h, id) {
		w.roistatProjectId = id;
		w.roistatHost = h;
		var p = d.location.protocol == "https:" ? "https://" : "http://";
		var u = /^.*roistat_visit=[^;]+(.*)?$/.test(d.cookie) ? "/dist/module.js" : "/api/site/1.0/" + id + "/init?referrer=" + encodeURIComponent(d.location.href);
		var js = d.createElement(s);
		js.charset = "UTF-8";
		js.async = 1;
		js.src = p + h + u;
		var js2 = d.getElementsByTagName(s)[0];
		js2.parentNode.insertBefore(js, js2);
	})(window, document, 'script', 'cloud.roistat.com', 'fb8f1455492cbdbb0770445021890755');
</script>

<script>
	! function() {
		var t = document.createElement("script");
		t.type = "text/javascript", t.async = !0, t.src = "https://vk.com/js/api/openapi.js?169", t.onload = function() {
			VK.Retargeting.Init("VK-RTRG-1132490-9k1wO"), VK.Retargeting.Hit()
		}, document.head.appendChild(t)
	}();
</script><noscript><img src="https://vk.com/rtrg?p=VK-RTRG-1132490-9k1wO" style="position:fixed; left:-999px;" alt="" /></noscript>

<!-- Facebook Pixel Code -->
<script>
	! function(f, b, e, v, n, t, s) {
		if (f.fbq) return;
		n = f.fbq = function() {
			n.callMethod ?
				n.callMethod.apply(n, arguments) : n.queue.push(arguments)
		};
		if (!f._fbq) f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
		'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '2946387862245231');
	fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=2946387862245231&ev=PageView&noscript=1" /></noscript>
<!-- End Facebook Pixel Code -->

<meta name="facebook-domain-verification" content="ftpujtj1x8sbtvs58zmbdll4zj0q4x" />

<!-- Marquiz script start -->
<script>
	(function(w, d, s, o) {
		var j = d.createElement(s);
		j.async = true;
		j.src = '//script.marquiz.ru/v2.js';
		j.onload = function() {
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
	});
</script>
<!-- Marquiz script end -->

</body>

</html>