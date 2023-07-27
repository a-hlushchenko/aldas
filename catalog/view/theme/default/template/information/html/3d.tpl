<?php echo $header; ?>
<style>
	h1,
	h2 {
		color: #222;
	}

	.design-container {
		display: flex;
		width: 100%;
		gap: 48px;
		margin-bottom: 40px;
		align-items: center;
		justify-content: center;
	}

	.design-left {
		display: flex;
		flex-direction: column;
		gap: 20px;
		max-width: 380px;
	}

	h1 {
		margin-bottom: 40px;
	}

	.design-left p {
		margin: 0;
		font-size: 15px;
		max-width: 360px;
		line-height: 22px;
	}

	.design-left strong {
		font-size: 20px;
		display: block;
		line-height: 26px;
	}

	h2 {
		font-size: 32px;
	}

	.bl9_item_name {
		font-size: 15px;
		font-weight: 700;
		line-height: 22px;
	}

	.bl5 .btn {
		border-radius: 4px;
	}

	.design-left a {
		font-size: 15px;
		font-weight: 700;
		background: #18C792;
		border-radius: 4px;
		color: #FFF;
		padding: 15px 32px;
		width: fit-content;
		transition: background-color 0.3s, box-shadow 0.3s;
	}

	.design-left a:hover {
		background-color: #13B081;
		box-shadow: 0 9px 16px rgba(47, 66, 60, 0.2);
	}

	.design-left a:active {
		background-color: #13B081;
		box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.12);
	}

	.first-img-container {
		position: relative;
	}

	.first-img {
		position: absolute;
		bottom: 20px;
		right: 20px;
		border-radius: 8px;
		background: linear-gradient(180deg, rgba(114, 114, 114, 0.12) 0.01%, rgba(114, 114, 114, 0.16) 100%);
		backdrop-filter: blur(5px);
		padding: 24px;
		font-size: 18px;
		font-weight: 700;
		color: white;
		line-height: 120%;
		max-width: 200px;
		width: min-content;

	}

	.design-right {
		max-width: 700px;
		width: 100%;
	}

	@media (max-width: 1180px) {
		.design-right {
			max-width: 500px;
		}

		.first-img {
			font-size: 14px;
			padding: 16px;
		}

		.bl9 .bl9_wrapper {
			margin-bottom: 80px;
		}

		#tehnika img {
			border-radius: 8px;
		}
	}

	@media (max-width: 1100px) {
		.information-new {
			padding: 0;
		}
	}

	@media (max-width: 920px) {
		.design-container {
			flex-direction: column;
		}

		.design-left {
			align-items: center;
			max-width: 600px;
		}

		.design-left p {
			max-width: none;
		}
	}

	@media (max-width: 480px) {
		.first-img {
			padding: 12px;
			font-size: 12px;
			font-weight: 500;
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

<div class="container information-new">

	<?php echo $content_top; ?>

	<div id="content" class="info">

		<div class="container">
			<h1>3D ДИЗАЙН-ПРОЕКТ МЕБЕЛИ</h1>
		</div>

		<div class="container text-center">

			<div class="design-container">

				<div class="design-left">
					<strong>Вы решили приобрести эксклюзивную мебель, изготовленную специально для вас, по индивидуальному проекту?</strong>
					<p>Определиться с окончательным выбором вам поможет бесплатный комплект услуг по фотореалистичной визуализации и дизайну, который наша компания предлагает всем своим клиентам.</p>
					<p>Вы увидите, как изготовленная нами мебель будет выглядеть в вашей квартире, а наш профессиональный дизайнер поможет выбрать оптимальный цвет и стиль, который наиболее выигрышно смотреться именно в вашем случае.</p>
					<a href="#consultation" data-modal="consultation">Узнать подробнее</a>
				</div>

				<div class="design-right">
					<div class="swiper">
						<div id="tehnika" class="">
							<div class="swiper-wrapper">
								<div class="item swiper-slide first-img-container">
									<img src="images/onas/3d2.jpg">
									<div class="first-img">Пример фотореалистичной визуализации</div>
								</div>
								<div class="item swiper-slide">
									<img src="images/onas/3d3.jpg">
								</div>
								<div class="item swiper-slide">
									<img src="images/onas/3d4.jpg">
								</div>
								<div class="item swiper-slide">
									<img src="images/onas/3d5.jpg">
								</div>

							</div>
							<div class="button-next"></div>
							<div class="button-prev"></div>
							<div class="swiper-pagination"></div>
						</div>
					</div>
				</div>
			</div>


			<div class="bl9">
				<div class="container">
					<div class="h2 dflex">
						<h2 class="before_green">Как получить 3D проект бесплатно?</h2>
					</div>
					<div class="bl9_wrapper">
						<div class="bl9_item">
							<div class="bl9_l">
								<div class="bl9_item_image"><img src="img/bl9_6.jpg" alt=""></div>
								<div class="bl9_item_number">1</div>
							</div>
							<div class="bl9_r">
								<div class="bl9_item_name">Обращение в компанию</div>
								<div class="bl9_item_line"></div>
								<div class="bl9_item_text">интернет, телефон, салон</div>
							</div>
						</div>
						<div class="bl9_item">
							<div class="bl9_l">
								<div class="bl9_item_image"><img src="images/new/bl9_2.jpg" alt=""></div>
								<div class="bl9_item_number">2</div>
							</div>
							<div class="bl9_r">
								<div class="bl9_item_name">Составление эскиза проекта и согласование</div>
								<div class="bl9_item_line"></div>
								<div class="bl9_item_text">с менеджером-дизайнером</div>
							</div>
						</div>
						<div class="bl9_item">
							<div class="bl9_l">
								<div class="bl9_item_image"><img src="images/new/bl9_1.jpg" alt=""></div>
								<div class="bl9_item_number">3</div>
							</div>
							<div class="bl9_r">
								<div class="bl9_item_name">3D визуализация проекта</div>
								<div class="bl9_item_line"></div>
								<div class="bl9_item_text">в течении 2-х дней</div>
							</div>
						</div>
						<div class="bl9_item">
							<div class="bl9_l">
								<div class="bl9_item_image"><img src="img/bl9_7.jpg" alt=""></div>
								<div class="bl9_item_number">4</div>
							</div>
							<div class="bl9_r">
								<div class="bl9_item_name">Внесение правок в проект по согласованию</div>
								<div class="bl9_item_line"></div>
								<div class="bl9_item_text">как в 3D так и в эскизе</div>
							</div>
						</div>
						<div class="bl9_item">
							<div class="bl9_l">
								<div class="bl9_item_image"><img src="images/new/bl9_3.jpg" alt=""></div>
								<div class="bl9_item_number">5</div>
							</div>
							<div class="bl9_r">
								<div class="bl9_item_name">Покупка = рассрочка</div>
								<div class="bl9_item_line"></div>
								<div class="bl9_item_text">0% до 12 месяцев</div>
							</div>
						</div>
					</div>
				</div>
			</div>



			<?php
			include(DIR_TEMPLATE . 'default/template/parts/bl5_form.tpl');
			?>

		</div>
	</div>
</div>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var swiper = new Swiper("#tehnika", {
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
	});
</script>

<?php echo $footer; ?>