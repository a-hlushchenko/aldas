<?php echo $header; ?>
<style>
	img {
		padding: 0;
		border: none;
		margin: 0;
		border-radius: 0;
	}

	.information-information #content .row {
		margin: 40px -15px;
	}

	h2 {
		margin-bottom: 30px;
		margin-top: 20px;
	}

	p {
		line-height: 23px;
	}

	#content {
		color: #000;
	}

	.priem span {
		display: block;
		margin: 15px 0;
		font-size: 18px;
		font-weight: bold;
	}

	@media (max-width:768px) {
		.priem img {
			float: left;
			width: 101px;
			height: auto;
		}

		.priem .rright {
			margin-left: 115px;
		}

		.priem span {
			margin-top: 0;
		}

		.priem>div {
			margin-top: 20px;
		}
	}

	h1 {
		color: #222;
	}

	.delivery {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: 24px;
		margin-bottom: 80px;
	}

	.delivery-item {
		background-color: #F7F7F7;
		border-radius: 8px;
		padding: 24px 24px 24px;
	}

	.delivery-text {
		margin-top: 48px;
	}

	.delivery-text span {
		font-size: 20px;
		margin-bottom: 12px;
		font-weight: 500;
		line-height: 26px;
	}

	.delivery-text p {
		font-size: 15px;
		line-height: 22px;
	}

	.img {
		height: 80px;
	}

	.delivery-item .img {
		display: flex;
		align-items: center;
	}

	.first,
	.second {
		display: flex;
		align-items: center;
		gap: 64px;
		margin-bottom: 80px;
	}

	.delivery-text p {
		font-size: 15px;
	}

	.first p:nth-child(3) {
		font-weight: 700;
	}

	.second p:nth-child(1) {
		font-weight: 700;
	}

	.first img,
	.second img {
		height: fit-content;
		width: 100%;
	}

	@media (max-width: 1100px) {

		.first img,
		.second img {
			max-width: 500px;
		}

		.first,
		.second {
			gap: 48px;
		}
	}

	@media (max-width: 1000px) {
		.delivery {
			grid-template-columns: 1fr 1fr;
		}

		.delivery .delivery-item:nth-child(3) {
			grid-column: 1 / 3;
		}

		.first img,
		.second img {
			max-width: none;
		}

		.first,
		.second {
			flex-direction: column;
		}

		.second img {
			order: 2;
		}

		.first-description,
		.second-desciption {
			max-width: 700px;
		}
	}

	@media (max-width: 740px) {
		.delivery {
			display: flex;
			flex-direction: column;
		}

		.first,
		.second {
			gap: 24px;
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
			<h1>Доставка и сборка</h1>
		</div>
		<div class="text-center">


			<div class="delivery">
				<div class="delivery-item">
					<div class="img"><img src="img/svg/delivery1.svg"></div>
					<div class="delivery-text">
						<span>Доставка по Москве и подъем до квартиры бесплатно</span>
						<p>У нас есть возможность отправить мебель автомобильным транспортом и другие регионы – цена в этом случае обсуждается с менеджером при оформлении заказа.</p>
					</div>
				</div>
				<div class="delivery-item">
					<div class="img"><img src="img/svg/delivery2.svg"></div>
					<div class="delivery-text">
						<span>Сборка – 10% от цены приобритения</span>
						<p>Как показывает практика, именно от этого часто зависит внешний вид и долговечность эксплуатации гарнитура.<br />Мы гарантируем, что на фасадах не будет вмятин и царапин, что все дверцы будут открываться, а ящики – выдвигаться.</p>
					</div>
				</div>
				<div class="delivery-item">
					<div class="img"><img src="img/svg/delivery3.svg"></div>
					<div class="delivery-text">
						<span>Срок гарантии до 5 лет постоянной эксплуатации.</span>
						<p>На протяжении гарантийного срока Вы пользуетесь мебелью, соблюдая требования инчтрукции по эксплуатации, оцениваете её качество и надежность работы механизмов. Мы бесплатно устраняем выявленные недостатки.</p>
					</div>
				</div>
			</div>

			<div class="first">
				<div class="first-description">
					<p>Мебель, в том числе кухонные гарнитуры – это не тот товар, который можно купить на распродаже и унести домой в пакете. И даже на личном автомобиле увезти вряд ли получится. Поэтому, компания, занимающаяся продажей мебели (здесь уже не суть важно, будет ли модель куплена готовой, или произведена на заказ по индивидуальному проекту) просто обязана предусмотреть доставку приобретенного товара.</p>
					<p>Это уже стало непреложным правилом, и мы – не исключение. Наша компания предлагает своим покупателям организованную доставку мебели и ее сборку. Да, мы не упомянули, что гарнитуры продаются, как правило, в разобранном виде, это значительно облегчает их транспортировку. А значит, после доставки их необходимо собрать.</p>
					<p>Если покупатель уверен в своих силах и решит осуществить установку мебели сам – мы возражать не будем, это его право. Мы доставим покупку до квартиры и сдадим по описи с последующим вскрытием упаковки. Гарантия на нашу мебель в этом случае будет 6 месяцев.</p>
				</div>
				<img src="/img/delivery4.jpg" alt="delivery">
			</div>

			<div class="second">
				<img src="/img/delivery5.jpg" alt="delivery">
				<div class="second-desciption">
					<p>Более того, при необходимости мы можем установить сантехнику на новой кухне и подключить бытовую технику, врезать для нее электрическую розетку. Это входит в дополнительные услуги, они оплачиваются отдельно, согласно утвержденного нашей компанией прайса. И напоследок.</p>
					<p>Все наши специалисты по доставке и сборке мебели – мастера высокой квалификации. Они прекрасно знают свою работу и сделают ее максимально быстро и качественно, не оставив после себя грязи и мусора. Они всегда приезжают в фирменной рабочей одежде и надевают бахилы, чтобы не испачкать пол. И да, они не комментируют жилищные условия наших клиентов, они предельно внимательны, корректны и вежливы.</p>
				</div>

			</div>
		</div>
	</div>

	<?php
	include(DIR_TEMPLATE . 'default/template/parts/bl5_form.tpl');
	?>
</div>

<?php echo $footer; ?>