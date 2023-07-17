<?php echo $header; ?>

<style>
	.contact {
		display: flex;
		background-color: #F7F7F7;
		padding: 16px;
		border-radius: 8px;
		gap: 24px;
		margin-bottom: 80px;
	}
	.map {
		border: 8px solid white;
	}
	.metro-img {
		height: 36px;
		width: 36px;
	}
	.metro-container {
		display: flex;
		gap: 12px;
		align-items: center;
	}
	.metro-text {
		display: flex;
		flex-direction: column;
	}
	.contact-content {
		padding: 12px;
		display: flex;
		flex-direction: column;
		gap: 12px;
	}
	.salon-name {
		font-size: 18px;
		font-weight: 700;
	}
	.metro-name {
		color: #878585;
		font-size: 13px;
	}
	.work {
		font-size: 15px;
	}
	.phone {
		color: #222;
		font-size: 15px;
		font-weight: 700;
	}
	.mail {
		font-size: 15px;
		font-weight: 700;
	}
	.city {
		font-size: 13px;
	}
	.description {
		font-size: 13px;
		font-weight: 700;
	}
	.photo {
		width: 100%;
		margin-top: 32px;
		border-radius: 8px;
	}

	@media (min-width: 1100px) {
		.information-contact {
			padding: 0 20px;
		}
	}
	@media (max-width: 1100px) {
		.map {
			max-width: 480px;
		}
	}
	@media (max-width: 920px) {
		.contact {
			flex-direction: column;
		}
	}
</style>

  <div class="container information-information">

  <?php //echo $content_top; ?>

  <ul class="breadcrumbs">
	<?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
	  <?php if($breadcrumb['href']){ ?>
		<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"
			itemref="breadcrumb-1">
		  <a href="http://aldas.ru/" itemprop="url">
		  <span itemprop="title"><?php echo $breadcrumb['text']; ?></span>
		  </a>
		</li >
	  <?php } else { ?>
		<li itemprop="child" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"
			id="breadcrumb-2">
		  <span itemprop="title"><?php echo $breadcrumb['text']; ?></span>
		</li>
	  <?php } ?>
	<?php } ?>
</ul>

    <div id="content" class="info">
      <h1>Контакты</h1>

      <div class="">

      	<div class="row">
      		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
      			<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Ac2b80669b6105f12a9cbe5611fb8e24027f4d653da59206e721f1954dff6865b&amp;height=450&amp;lang=ru_RU&amp;scroll=false"></script>
      		</div>
      	</div>

      	<div class="row">
      		<? /*
			<div class="">
      			<div class="row cont">
      				<div class="">
	              	  <p><strong>Салон №1</strong><br/><strong>Телефон: <a class="" href="tel:84951369639">8-495-136-96-39</a></strong></p>
		              <p>Часы работы: ежедневно с 10:00 до 20:00</p>
		              <p>E-mail : <a href="mailto:info@aldas.ru" target="_blank"> info@aldas.ru</a></p>
						<p style="text-indent:0;margin-left:5px;">
							Старый адрес: <span style="text-decoration: line-through;">Москва, проспект Маршала Жукова, 1с1</span><br/>
						Новый адрес: <span>Москва, улица Орджоникидзе, 11с10, подъезд 1</span><br/>
                    	Станция метро - <span class="titleb">Ленинский проспект. <br>Для клиентов салона индивидуальная, бесплатная парковка (для парковки необходимо связаться с менеджером).</span>
						</p>
					</div>
					<div class="">
						<table>
						<tr>
							<td><img style="width:auto;border:none;padding:0;margin:0;" src="https://www.aldas.ru/image/catalog/icon/metro.jpg" /></td>
							<td vlign="middle" style="text-align: center;">Метро <strong>Ленинский проспект</strong></td>
						</tr>
						</table>
						<img class="photo" src="https://www.aldas.ru/image/catalog/onezhukov-salon.jpg"/>
					</div>

      			</div>
      		</div> */ ?>


      		<div class="">
      			<div class="contact">
					<div class="contact-content">
						<div class="metro-container">
							<img src="/image/svg/metro.svg" alt="" class="metro-img">
							<div class="metro-text">
								<strong class="salon-name">Салон Колибри</strong>
								<span class="metro-name">Метро Страхановская</span>
							</div>
						</div>
						<div class="work">Ежедневно с 10:00 до 20:00</div>
						<a class="phone" href="tel:84999554090">8-499-955-40-90</a>
						<a class="mail" href="mailto:info@aldas.ru" target="_blank"> info@aldas.ru</a>
						<div class="city">Москва, 2-й Грайвороновский проезд, 44 к2</div>
						<div class="description">На территории ТЦ бесплатная парковка</div>
						<img class="photo" src="/image/salon1.png"/>
					</div>
					<img src="/image/map.png" alt="map" class="map">
				</div>

				


						<!-- <div class="">
							<p><strong>Салон №1</strong><br/><strong>Телефон: <a class="roistatphone" href="tel:84999554090">8-499-955-40-90</a></strong></p>
							<p>Часы работы : ежедневно с 10:00 до 20:00</p>
							<p>E-mail : <a href="mailto:info@aldas.ru" target="_blank"> info@aldas.ru</a></p>
							<p style="text-indent:0;margin-left:5px;">
							C МКАД: Московская обл., Люберецкий р-н, Люберцы, Новорязанское ш., 1а, Торговый центр "Колибри" <br/>
							Со стороны района Жулебино: г. Москва, улица Авиаконструктора Миля, 26 - Торговый центр "Колибри" 2-ой этаж. <br/><strong>На территории ТЦ бесплатная парковка.</strong>
							</p>
						</div> -->

						<!-- <div class="">
							<table>
								<tr>
								<td><img style="width:auto;border:none;padding:0;margin:0;" src="https://www.aldas.ru/image/catalog/icon/metro.jpg" /></td>
								<td vlign="middle" style="text-align: center;">Метро <strong>Котельники</strong></td>
								</tr>
							</table>
							<img class="width95pr" src="https://www.aldas.ru/image/catalog/bb895ea981.jpg"/>
						</div>
					</div> -->

      			
      		</div>
      	<!-- </div>

      	<div class="row"> -->
      		<!-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      			<div class="row cont">
	              	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		              	<p><strong>Салон №2</strong><br/><strong>Телефон: <a class="roistatphone" href="tel:84951369638">8-495-136-96-38</a></strong></p>
		              	<p>Часы работы : ежедневно с 10:00 до 20:00</p>
		              	<p>E-mail : <a href="mailto:info@aldas.ru" target="_blank"> info@aldas.ru</a></p>
						<p style="text-indent:0;margin-left:5px;">
						Москва, улица Олеко Дундича, 19/15<br/>
						<? /*<strong>Отдельный вход с улицы, парковка у салона бесплатная.</strong>*/ ?>
						<strong>Посещение строго по записи</strong>
						</p>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<table>
		                  <tr>
		                    <td><img style="width:auto;border:none;padding:0;margin:0;" src="https://www.aldas.ru/image/catalog/icon/metro.jpg" /></td>
		                    <td vlign="middle" style="text-align: center;">Метро <strong>Филёвский парк</strong></td>
		                  </tr>
		                </table>
					    <img class="width95pr" src="https://www.aldas.ru/image/catalog/fili.webp"/>

					</div>

      			</div>
      		</div>
      		<? /*<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      			<div class="row cont">
	              	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><br/><br/>
		              	<p><strong>Салон №4</strong>
						Район Тропарево-Никулино, Ленинский проспект. Открытие в ноябре 2021.<br/><br/>
                		Станция метро - <strong>Тропарево</strong>
						</p>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					</div>

      			</div>
      		</div> */ ?>
      	</div> -->




	  </div>


	</div>
</div>

<?php 
	include( DIR_TEMPLATE . 'default/template/parts/bl5_form.tpl');
?>

<?php echo $footer; ?>
