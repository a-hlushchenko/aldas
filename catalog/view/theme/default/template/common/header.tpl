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

<!-- <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script async type="text/javascript" src="https://www.aldas.ru/catalog/view/javascript/current-device.min.js"></script> -->
<link rel="stylesheet" href="/catalog/view/theme/default/font/stylesheet.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="css/general.css"/>
<link rel="stylesheet" href="js/mobile-menu/jquery.mobile-menu.css"/>

<link rel="manifest" href="/catalog/view/javascript/manifest.json">
<?php foreach ($links as $link) { ?>
<!-- <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />; -->
<?php } ?>


<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MRD8BSP"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

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

  <div id="overlay"></div>
  <div class="overlay"></div>

   <!-- <div class="search-form1 hide991">
        <input type="search" name="search" value="<?php echo $search; ?>" placeholder="Поиск" />
        <input type="submit" value="" class="search2" />
    </div> -->

  <div id="search" class="container_form">
    <div class="search_wrapper">
      <input type="search" name="search" value="<?php echo $search; ?>">
      <div class="btn search2">Посик</div>
      <div class="form_close btn"><svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> <path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> </svg></div>
    </div>
  </div>

  <div id="online_calc" class="container_form">
    <div class="form_wrapper">
      <div class="form_close btn"><svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> <path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> </svg></div>
      <div class="online_title">Онлайн расчёт</div>
      <div class="online_pgrogress">
        <div class="online_pgrogress_step">1/4</div>
        <div class="online_pgrogress_line"><span></span></div>
      </div>
      <div class="steps">
		<form class="form send_n">
			<input type="hidden" name="form_name" value="Онлайн расчёт">
			<input type="hidden" name="send_calc" value="1">
				
			<div class="step step1 active" data-progress="2">
				<div class="step_title">Материал фасада</div>
				<div class="step_items">
					<div class="step_item">

					<div class="step_img">
						<img src="images/new/fasad1.jpg" alt="Массив дерева">
						<div class="step_name radio_wrapper">
						<div class="radio_el">
							<input type="radio" id="fasad1" name="mater" data-kef="1.2" checked value="Массив дерева">
							<label for="fasad1">Массив дерева</label>
						</div>
						</div>
					</div>
					<div class="step_text">Фасады из массива дуба или ясеня. Индивидуальность в сочетании с классическим стилем. Премиальное решение</div>
					</div>
					<div class="step_item">

					<div class="step_img">
						<img src="images/new/fasad2.jpg" alt="Эмаль (МДФ)">
						<div class="step_name radio_wrapper">
						<div class="radio_el">
							<input type="radio" id="fasad2" name="mater" data-kef="1.1" value="Эмаль (МДФ)">
							<label for="fasad2">Эмаль (МДФ)</label>
						</div>
						</div>
					</div>
					<div class="step_text">Фасады из МДФ с защитным покрытием из эмали. Классический стиль, оптимальная стоимость, экологичность</div>
					</div>
					<div class="step_item">
					<div class="step_img">
						<img src="images/new/fasad1.jpg" alt="Эко-пластик">
						<div class="step_name radio_wrapper">
						<div class="radio_el">
							<input type="radio" id="fasad3" name="mater" data-kef="1" value="Эко-пластик">
							<label for="fasad3">Эко-пластик</label>
						</div>
						</div>
					</div>
					<div class="step_text">Фасады из МДФ покрытые эко-пластиком. Современный стиль и яркая фактура.</div>
					</div>
				</div>
				<div class="btn arrow" data-next="2">Далее</div>
			</div>
			<div class="step step2" data-progress="33">
			<div class="step_title">Фурнитура</div>
			<div class="step_items">
				<div class="step_item">

				<div class="step_img">
					<img src="images/new/furnitura1.jpg" alt="Стандарт">
					<div class="step_name radio_wrapper">
					<div class="radio_el">
						<input type="radio" id="furnitura1" data-price="0" name="furnit" checked value="Стандарт">
						<label for="furnitura1">Стандарт</label>
					</div>
					</div>
				</div>
				<div class="step_text">Фурнитура со стандартной системой доводки. Используются шариковые подшибники в системе направляющих</div>
				</div>
				<div class="step_item">

				<div class="step_img">
					<img src="images/new/furnitura2.jpg" alt="BLUM премиум">
					<div class="step_name radio_wrapper">
					<div class="radio_el">
						<input type="radio" id="furnitura2" data-price="4000" name="furnit" value="BLUM премиум">
						<label for="furnitura2">BLUM премиум</label>
					</div>
					</div>
				</div>
				<div class="step_text">Современные технологии, максимальный комфорт (бесшумные системы доводки). Премиальные решение от компании BLUM / Австрия</div>
				</div>
			</div>
			<div class="btn arrow" data-next="3">Далее</div>
			</div>
			<div class="step step3" data-progress="66">
				<div class="step_title">Комплектация</div>
				<div class="step_items">
					<div class="step_item">
					<div class="step_img">
						<img src="images/new/fasad1.jpg" alt="Стандарт">
						<div class="step_name radio_wrapper">
						<div class="radio_el">
							<input type="radio" id="compl1" name="kompl" data-price="0" checked value="Стандарт">
							<label for="compl1">Стандарт</label>
						</div>
						</div>
					</div>
					<div class="step_text">Базовая комплектация - корпус ЛДСП и фурнитура РФ, элементы декора отсутствуют</div>
					</div>
					<div class="step_item">
					<div class="step_img">
						<img src="images/new/fasad2.jpg" alt="Комфорт">
						<div class="step_name radio_wrapper">
						<div class="radio_el">
							<input type="radio" id="compl2" name="kompl" data-price="2500" value="Комфорт">
							<label for="compl2">Комфорт</label>
						</div>
						</div>
					</div>
					<div class="step_text">Популярная комплектация из стандартных элементов. Карниз и цоколь входит в комплект, элементы декора отсутствуют</div>
					</div>
					<div class="step_item">
					<div class="step_img">
						<img src="images/new/fasad1.jpg" alt="Престиж">
						<div class="step_name radio_wrapper">
						<div class="radio_el">
							<input type="radio" id="compl3" name="kompl" data-price="5000" value="Престиж">
							<label for="compl3">Престиж</label>
						</div>
						</div>
					</div>
					<div class="step_text">Индивидуальные размеры и насыщенная комплектация. Все элементы декора присутствуют и определяются индивидуально</div>
					</div>
				</div>
				<div class="btn arrow" data-next="4">Далее</div>
			</div>
			<div class="step step4" data-progress="100">
				<div class="step_items_finish">
					<div class="step_item finish">
					<div class="finish_title">Общая длина кухни (см)</div>
					<div class="finish_calc">
						<div class="finish_length"><input type="text" name="dlina" value="2500"></div>
						<div class="finish_calc_res">
						<div class="finish_calc_name">Примерная стоимость:</div>
						<div class="finish_calc_result"><span>0</span> ₽</div>
						<input type="hidden" name="pricetotal" id="pricetotal" value="{price}"/>
						</div>
					</div>
					</div>
					<div class="button_footer">
						<div><a href="#call_raschet" class="btn call_raschet active" onclick="return false" data-modal="call_raschet">Оставить заявку на детальный расчёт</a>
						</div>
						<!-- <input type="submit" value="Оставить заявку на детальный расчёт" class="btn send button" /> -->
						<div class="btn hidden send_calc" data-next="finish">Оставить заявку на детальный расчёт</div>
						<div class="text_help">Нажимая кнопку «Оставить заявку на расчёт», я принимаю условия Пользовательского соглашения и даю своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.</div>
					</div>
				</div>


			</div>
		</form>
      </div>
    </div>
  </div>
  <div id="call_raschet" class="container_form"> 
	<div class="form_wrapper"> 
		<div class="form_close btn"> 
			<svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> <path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> </svg> 
		</div> 
		<div class="form_left"></div> 
		<div class="form_right"> 
			<form class="form send_n call_raschet">
				
				<h3>Рассчитать проект</h3>
				<!--<div class="help">Бесплатный вызов специалиста для точного замера помещения, консультации и составления дизайн-проекта мебели.</div>-->
				<div class="bl5_row"><input type="text" name="name" required="" placeholder="Ваше имя"></div>
				<div class="bl5_row radio_wrapper">
					<div class="radio_el">
						<input type="radio" id="rad121_1" name="callto" checked="checked" value="Перезвонить">
						<label for="rad121_1" onclick="to_tel(this);">Перезвонить</label>
					</div>
					<div class="radio_el">
						<input type="radio" id="rad221_1" name="callto" value="Написать на почту">
						<label for="rad221_1" onclick="to_email(this);">Написать на почту</label>
					</div>
				</div>
				<div class="bl5_row">
					<input type="tel" name="tel" class="to_tel" required="" placeholder="Телефон" maxlength="16">
					<input type="email" name="email" class="to_email" placeholder="E-mail" maxlength="16" style="display:none">
				</div>
				<div class="bl5_row">
					<textarea name="comment" required="" placeholder="Комментарий или вопрос"></textarea>
				</div>

				<div class="file">
					<input type="hidden" name="file" value="">
					<input type="button" value="Выбрать файл" id="buttonfile" class="btn light" data-loading-text="Загружаем...">
					<input type="text" readonly="" name="namefile" value="Файл не выбран">
				</div>
				<!-- <div class="help2">
						Нажимая кнопку «Оставить заявку», я принимаю условия Пользовательского соглашения и даю
						своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.
					</div> -->
				<div class="help2">Если у Вас имеются готовые бланки замера или дизайн проект, прикрепите их и мы подробно просчитаем Ваш проект</div>
				<div class="bl5_row">
					<input type="submit" value="Оставить заявку" class="btn send button">
				</div>
				<div class="help2">Нажимая кнопку «Оставить заявку», я принимаю условия Пользовательского соглашения и даю своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.</div>
			</form>
		</div> 
	</div> 
  </div>

  <div id="success" class="container_form">
    <div class="form_wrapper">
      <div class="form_close btn"><svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> <path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> </svg></div>
      <div class="form_center">
        <img src="images/new/success_light.svg" alt="Заявка отправлена!">
        <div class="success_title">Заявка отправлена!</div>
        <div class="success_text">Мы обработаем вашу заявку в ближайшее время, пожалуйста, ожидайте.</div>
        <div class="btn form_close_btn">Закрыть</div>
      </div>

    </div>
  </div>
  <div id="call_design" class="container_form">
    <div class="form_wrapper">
      <div class="form_close btn"><svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> <path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> </svg></div>
      <div class="form_left"></div>
      <div class="form_right">
        <form class="form send_n">
          <h3>Оставьте заявку на вызов замерщика</h3>
          <div class="help">Бесплатный вызов специалиста для точного замера помещения, консультации и составления дизайн-проекта мебели.</div>
          <div class="bl5_row"><input type="text" name="name" required="" placeholder="Ваше имя"></div>
          <div class="bl5_row radio_wrapper">
				<div class="radio_el">
					<input type="radio" id="rad121_2" name="callto" checked="checked" value="Перезвонить">
					<label for="rad121_2" onclick="to_tel(this);">Перезвонить</label>
				</div>
				<div class="radio_el">
					<input type="radio" id="rad221_2" name="callto" value="Написать на почту">
					<label for="rad221_2" onclick="to_email(this);">Написать на почту</label>
				</div>
		  </div>
			
		  <div class="bl5_row">
			<input type="tel" name="tel" class="to_tel" required="" placeholder="Телефон" maxlength="16">
			<input type="email" name="email" class="to_email" placeholder="E-mail" maxlength="16" style="display:none">
		  </div>
          <div class="bl5_row"><textarea name="comment" required="" placeholder="Ваш адрес и комментарий"></textarea></div>
          
		  <div class="bl5_row">
			<input type="submit" value="Отправить заявку" class="btn send button">
		  </div>
          <div class="help2">
            Нажимая кнопку «Оставить заявку», я принимаю условия Пользовательского соглашения и даю своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.
          </div>
        </form>
      </div>
    </div>
  </div>

  <div id="consultation" class="container_form">
    <div class="form_wrapper">
      <div class="form_close btn"><svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> <path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path> </svg></div>
      <div class="form_left"></div>
      <div class="form_right">
        <form class="form">
          <h3>Оставьте заявку на бесплатную консультацию</h3>
          <div class="bl5_row"><input type="text" name="name" required="" placeholder="Ваше имя"></div>
          <div class="bl5_row radio_wrapper">
            <div class="radio_el">
              <input type="radio" id="rad121_3" name="callto" checked="checked" value="Перезвонить">
              <label for="rad121_3" onclick="to_tel(this);">Перезвонить</label>
            </div>
            <div class="radio_el">
              <input type="radio" id="rad221_3" name="callto" value="Написать на почту">
              <label for="rad221_3" onclick="to_email(this);">Написать на почту</label>
            </div>
          </div>
          <div class="bl5_row">
            <input type="tel" name="tel" class="to_tel" required="" placeholder="Телефон" maxlength="16">
            <input type="email" name="email" class="to_email" placeholder="E-mail" maxlength="16" style="display:none">
          </div>
          <div class="bl5_row">
            <input type="submit" value="Оставить заявку" class="btn send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">
          </div>
          <div class="help2">
            Нажимая кнопку «Оставить заявку», я принимаю условия Пользовательского соглашения и даю своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.
          </div>
        </form>
      </div>
    </div>
  </div>

  <div id="mobile-menu">
    <ul>
      <li>
        <div class="h_top">
          <div class="logo">
            <img src="images/new/svg/logo.svg" alt="Алдас">
            <div>
              Мебель на заказ<br>от производителя
            </div>
            <div class="search">
              <a href="#search" data-modal="search">
                <svg width="14" height="15" viewBox="0 0 14 15" fill="none" xmlns="http://www.w3.org/2000/svg"> <circle cx="6.9375" cy="6.5" r="5" stroke="#18C792" stroke-width="2"/> <path d="M10.5625 11L13.0625 13.5" stroke="#18C792" stroke-width="2"/> </svg>
              </a>
            </div>
          </div>
          <a href="#call_design" data-modal="call_design" class="call_design btn light">
            Вызвать дизайнера-замерщика
          </a>
          <a href="#consultation" data-modal="consultation" class="consultation btn light">Заказать консультацию</a>

        </div>
      </li>

      <li class="links">
        <a href="#" class="kitchen" >Кухни </a>
        <ul>
          <li>
            <a href="" class="btn light arrow">Все кухни</a>
          </li>
          <li class="menu_sub_item">
            <b>Формат</b>
            <ul class="menu_sub_item_block">
              <li><a href="">Угловые</a></li>
              <li><a href="">Угловые</a></li>
              <li><a href="">П образные</a></li>
              <li><a href="">С барной стойкой</a></li>
              <li><a href="">С островом</a></li>
            </ul>
          </li>
          <li class="menu_sub_item">
            <b>Формат</b>
            <ul class="menu_sub_item_block">
              <li><a href="">Угловые</a></li>
              <li><a href="">Угловые</a></li>
              <li><a href="">П образные</a></li>
              <li><a href="">С барной стойкой</a></li>
              <li><a href="">С островом</a></li>
            </ul>
          </li>
          <li class="menu_sub_item">
            <b>Формат</b>
            <ul class="menu_sub_item_block">
              <li><a href="">Угловые</a></li>
              <li><a href="">Угловые</a></li>
              <li><a href="">П образные</a></li>
              <li><a href="">С барной стойкой</a></li>
              <li><a href="">С островом</a></li>
            </ul>
          </li>
          <li class="menu_sub_item">
            <b>Формат</b>
            <ul class="menu_sub_item_block">
              <li><a href="">Угловые</a></li>
              <li><a href="">Угловые</a></li>
              <li><a href="">П образные</a></li>
              <li><a href="">С барной стойкой</a></li>
              <li><a href="">С островом</a></li>
            </ul>
          </li>
          <li class="menu_sub_item">
            <b>Формат</b>
            <ul class="menu_sub_item_block">
              <li><a href="">Угловые</a></li>
              <li><a href="">Угловые</a></li>
              <li><a href="">П образные</a></li>
              <li><a href="">С барной стойкой</a></li>
              <li><a href="">С островом</a></li>
            </ul>
          </li>
          <li class="color menu_sub_item">
            <b>Цвет</b>
            <ul class="colors">
              <a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a><a href=""></a>
            </ul>
          </li>
          <li>
            <a href="/katalog/" class="btn btnk">Кухни на заказ</a>
          </li>
          <li>
            <a class="menu_footer_r_image" href="#consultation" data-modal="consultation">
              <img src="images/new/svg/menu_footer_r_image.jpg" alt="Кухня по своему проекту">
              <div class="shadow"></div>
              <div class="img_text">Мебель по своему проекту</div>
            </a>
          </li>
        </ul>
      </li>
      <li><a href="/shkafy/">Шкафы</a></li>
      <li><a href="/prihozhie/">Прихожие</a></li>
      <li><a href="/mebel-dlya-spalni/">Спальни</a></li>
      <li><a href="/gostinyie/">Детские</a></li>
      <li><a href="/gostinyie/">Гостиные</a></li>
      <li><a href="/garderobnyie/">Гардеробные</a></li>
      <li><a href="/kabinety/">Кабинеты</a></li>


    </ul>
  </div>

  <div class="main_container">
    <div class="container_m bbottom">
      <div class="container">
        <div class="top_menu">
          <a href="/about/">О нас</a>
          <a href="/otzyvy/">Отзывы c фото заказов</a>
          <a href="">Материалы и фасады</a>
          <a href="/dizain-mebel/">Бесплатный 3D проект</a>
          <a href="/mebel-v-rassrochku/">Рассрочка</a>
          <a href="/sborka_dostavka/">Сборка и доставка</a>
          <a href="/partnery/">Сотрудничество</a>
          <a href="/contact/">Контакты</a>
          <div class="search">
            <a href="#search" data-modal="search">
              <svg width="14" height="15" viewBox="0 0 14 15" fill="none" xmlns="http://www.w3.org/2000/svg"> <circle cx="6.9375" cy="6.5" r="5" stroke="#18C792" stroke-width="2"/> <path d="M10.5625 11L13.0625 13.5" stroke="#18C792" stroke-width="2"/> </svg>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="container_m">
      <div class="header">
        <div class="container">
          <div class="h_top">
            <div class="logo">
              <div class="mm-toggle-wrap">
                <div class="mm-toggle">
                  <div class="header__burger-btn"><span></span><span></span><span></span></div>
                </div>
              </div>
              <?php if ($logo) { ?>
               <div class="logo">
              <?php if ($home == $og_url) { ?>
               <img src="images/new/svg/logo.svg" alt="Алдас">
              <?php } else { ?>
                <a href="<?php echo $home; ?>"><img src="images/new/svg/logo.svg" alt="Алдас"></a>
              <?php } ?>
              </div>
              <?php } ?>

              <span>
                Мебель на заказ<br>от производителя
              </span>
            </div>
            <div class="address">
              <img src="images/new/svg/location.svg" alt="Алдас">
              <div>2-й Грайвороновский проезд, 44 к2<br>(Посещение по записи)</div>
            </div>
            <a href="#call_design" data-modal="call_design" class="call_design btn light">
              <svg width="19" height="14" viewBox="0 0 19 14" fill="none" xmlns="http://www.w3.org/2000/svg"> <circle cx="7.5" cy="7" r="6" stroke="#18C792" stroke-width="2"/> <circle cx="7.5" cy="7" r="2" stroke="#18C792" stroke-width="2"/> <rect x="7.5" y="12" width="10" height="2" fill="#18C792"/> <rect x="16.5" y="10" width="2" height="4" fill="#18C792"/> </svg>
              <span>Вызвать дизайнера-замерщика</span>
            </a>
            <a href="#consultation" data-modal="consultation" class="consultation btn light">Заказать консультацию</a>
            <div class="tel_time">
              <div class="time">Ежедневно с 09:00 до 20:00</div>
              <a href="tel:+7 (499) 347-12-27" class="tel roistat">+7 (499) 347-12-27</a>
            </div>
          </div>
        </div>
        <div class="h_menu container">
          <?php echo $categories; ?>
          
        </div>
        <a href="#online_calc" class="online_calc" data-modal="online_calc">
          <div>
            <svg width="18" height="24" viewBox="0 0 18 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect x="1" y="1.5" width="16" height="21" rx="1" stroke="white" stroke-width="2"/> <line x1="1" y1="7.5" x2="17" y2="7.5" stroke="white" stroke-width="2"/> <rect x="3" y="11.5" width="5" height="1" fill="white"/> <rect x="4.08582" y="15.8787" width="5" height="1" transform="rotate(45 4.08582 15.8787)" fill="white"/> <rect x="10" y="11.5" width="5" height="1" fill="white"/> <rect x="10" y="16.5" width="5" height="1" fill="white"/> <rect x="10" y="18.5" width="5" height="1" fill="white"/> <rect x="6" y="9.5" width="5" height="1" transform="rotate(90 6 9.5)" fill="white"/> <rect x="7.62134" y="16.5858" width="5" height="1" transform="rotate(135 7.62134 16.5858)" fill="white"/> </svg>
            <span>Online калькулятор</span>
          </div>
        </a>
      </div>
    </div>

    <div class="main_content">







