<?php echo $header; ?>

  <div class="container information-information">

  <?php //echo $content_top; ?>

      <ul class="catalog-list">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
         <li>
        <?php if($breadcrumb['href']){ ?>
          <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } else { ?>
          <?php echo $breadcrumb['text']; ?>
        <?php } ?>
        </li>
        <?php } ?>
      </ul>

    <div id="content" class="info">
      <h1>Наши контакты</h1>

      <div class="container">

      	<div class="row">
      		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
      			<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Ac2b80669b6105f12a9cbe5611fb8e24027f4d653da59206e721f1954dff6865b&amp;height=450&amp;lang=ru_RU&amp;scroll=false"></script>
      		</div>
      	</div>

      	<div class="row">
      		<? /*<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      			<div class="row cont">
      				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
	              	  <p><strong>Салон №1</strong><br/><strong>Телефон: <a class="" href="tel:84951369639">8-495-136-96-39</a></strong></p>
		              <p>Часы работы: ежедневно с 10:00 до 20:00</p>
		              <p>E-mail : <a href="mailto:info@aldas.ru" target="_blank"> info@aldas.ru</a></p>
						<p style="text-indent:0;margin-left:5px;">
							Старый адрес: <span style="text-decoration: line-through;">Москва, проспект Маршала Жукова, 1с1</span><br/>
						Новый адрес: <span>Москва, улица Орджоникидзе, 11с10, подъезд 1</span><br/>
                    	Станция метро - <span class="titleb">Ленинский проспект. <br>Для клиентов салона индивидуальная, бесплатная парковка (для парковки необходимо связаться с менеджером).</span>
						</p>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						 <table>
			                <tr>
			                  <td><img style="width:auto;border:none;padding:0;margin:0;" src="https://www.aldas.ru/image/catalog/icon/metro.jpg" /></td>
			                  <td vlign="middle" style="text-align: center;">Метро <strong>Ленинский проспект</strong></td>
			                </tr>
			              </table>
			              <img class="width95pr" src="https://www.aldas.ru/image/catalog/onezhukov-salon.jpg"/>
					</div>

      			</div>
      		</div> */ ?>
      		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      			<div class="row cont">
	              	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		              	<p><strong>Салон №1</strong><br/><strong>Телефон: <a class="roistatphone" href="tel:84999554090">8-499-955-40-90</a></strong></p>
		              	<p>Часы работы : ежедневно с 10:00 до 20:00</p>
		              	<p>E-mail : <a href="mailto:info@aldas.ru" target="_blank"> info@aldas.ru</a></p>
						<p style="text-indent:0;margin-left:5px;">
						C МКАД: Московская обл., Люберецкий р-н, Люберцы, Новорязанское ш., 1а, Торговый центр "Колибри" <br/>
						Со стороны района Жулебино: г. Москва, улица Авиаконструктора Миля, 26 - Торговый центр "Колибри" 2-ой этаж. <br/><strong>На территории ТЦ бесплатная парковка.</strong>
						</p>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<table>
		                  <tr>
		                    <td><img style="width:auto;border:none;padding:0;margin:0;" src="https://www.aldas.ru/image/catalog/icon/metro.jpg" /></td>
		                    <td vlign="middle" style="text-align: center;">Метро <strong>Котельники</strong></td>
		                  </tr>
		                </table>
					    <img class="width95pr" src="https://www.aldas.ru/image/catalog/bb895ea981.jpg"/>

					</div>

      			</div>
      		</div>
      	<!-- </div>

      	<div class="row"> -->
      		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
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
      	</div>




	  </div>


	</div>
</div>
<?php echo $footer; ?>
