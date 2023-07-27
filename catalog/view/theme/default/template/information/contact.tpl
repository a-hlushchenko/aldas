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

<ul class="breadcrumbs container">
	<?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
		<?php if ($breadcrumb['href']) { ?>
			<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" itemref="breadcrumb-1">
				<a href="http://aldas.ru/" itemprop="url">
					<span itemprop="title"><?php echo $breadcrumb['text']; ?></span>
				</a>
			</li>
		<?php } else { ?>
			<li itemprop="child" itemscope itemtype="http://data-vocabulary.org/Breadcrumb" id="breadcrumb-2">
				<span itemprop="title"><?php echo $breadcrumb['text']; ?></span>
			</li>
		<?php } ?>
	<?php } ?>
</ul>

<div class="container information-information">

	<?php //echo $content_top; 
	?>

	<div id="content" class="info">
		<h1>Контакты</h1>

		<div>

			<div>
				<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Ac2b80669b6105f12a9cbe5611fb8e24027f4d653da59206e721f1954dff6865b&amp;height=450&amp;lang=ru_RU&amp;scroll=false"></script>
			</div>


			<div class="contact">

				<div class="contact-content">

					<div class="metro-container">
						<img src="/img/svg/metro.svg" alt="" class="metro-img">
						<div class="metro-text">
							<strong class="salon-name">Салон Колибри</strong>
							<span class="metro-name">Метро Страхановская</span>
						</div>
					</div>

					<div class="work">Ежедневно с 10:00 до 20:00</div>
					<a class="phone" href="tel:84999554090">8-499-955-40-90</a>
					<a class="mail" href="mailto:info@aldas.ru" target="_blank"> info@aldas.ru</a>
					<div class="city">Москва, 2-й Грайвороновский проезд, 44 к2</div>
					<div class="description">ПОСЕЩЕНИЕ СТРОГО ПО ЗАПИСИ</div>
					<img class="photo" src="/img/salon1.jpg" />

				</div>

				<img src="/img/map.jpg" alt="map" class="map">

			</div>
		</div>
	</div>

	<?php
	include(DIR_TEMPLATE . 'default/template/parts/bl5_form.tpl');
	?>

	<?php echo $footer; ?>