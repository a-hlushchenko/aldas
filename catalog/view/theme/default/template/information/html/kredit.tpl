<?php echo $header; ?>
<style>
	h1 {
		color: #222;
		margin-bottom: 30px;
	}

	h2 {
		font-size: 32px;
		color: #222;
	}

	.bl9 .bl9_item {
		flex-basis: calc(25% - (12px * 2)/5);
	}

	.installment {
		display: flex;
		gap: 48px;
		margin-bottom: 48px;
	}

	.installment-left {
		max-width: 380px;
	}

	.installment-left p {
		font-size: 15px;
	}

	.installment-left p:last-child {
		font-weight: 700;
	}

	.installment-right {
		gap: 12px;
		flex-wrap: wrap;
	}

	.step {
		background: #F7F7F7;
		border-radius: 4px;
		display: flex;
		z-index: 5;
		position: relative;
		overflow: hidden
	}

	.installment-right .number {
		margin-right: 20px;
		font-family: 'Santa Catarina', sans-serif;
		font-size: 88px;
		line-height: 89px;
		font-feature-settings: tnum on, lnum on;
		background: linear-gradient(180deg, #2B2B2B 0%, rgba(43, 43, 43, 0) 100%);
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
		background-clip: text;
		text-fill-color: transparent;
		position: relative
	}

	.installment-right .number:before {
		z-index: -1;
		content: '';
		position: absolute;
		width: 24px;
		height: 24px;
		border-radius: 50%;
		background: #FFE200;
		top: -3px;
		left: 50%;
		transform: translateX(-50%)
	}

	.step:after {
		z-index: 1;
		content: '';
		position: absolute;
		width: 48px;
		height: 48px;
		border-radius: 50%;
		background: #fff;
		top: -24px;
		right: -48px;
		transform: translateX(-50%)
	}

	.installment-right .text {
		font-weight: 500;
		font-size: 20px;
		line-height: 22px
	}

	.installment-right .text:nth-child(2) {
		font-weight: 400;
		font-size: 15px;
	}

	.step {
		padding: 28px 28px 12px;
		box-sizing: border-box;
		align-items: center;
	}

	.st1,
	.st2 {
		flex-basis: calc(50% - (12px * 2)/3)
	}

	.st3 {
		flex-basis: calc(100% - (12px * 1)/2)
	}

	.payment-container {
		border-radius: 8px;
		margin: 48px 0;
		background-color: #F7F7F7;
		padding: 48px;
	}

	.payment {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		margin-top: 30px;
		gap: 24px;
	}

	.payment-item {
		background-color: #fff;
		border-radius: 8px;
		padding: 24px;
	}

	.payment .text {
		margin-top: 48px;
		font-size: 20px;
		font-weight: 500;
		line-height: 26px;
	}

	@media (max-width: 1080px) {
		.installment {
			flex-direction: column;
			align-items: center;
		}

		.installment-left {
			max-width: 600px;
		}
	}

	@media (max-width: 880px) {
		.bl1 {
			padding-top: 64px;
			margin-bottom: 64px
		}
	}

	@media (max-width: 780px) {
		.payment {
			flex-direction: column;
			display: flex;
		}
	}

	@media (max-width: 660px) {

		.installment-right {
			flex-direction: column
		}

		.payment-container {
			padding: 24px;
		}

		h2 {
			font-size: 24px;
		}

		.payment .text {
			font-size: 16px;
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
			<h1>КУХНИ В РАССРОЧКУ БЕЗ ПРОЦЕНТОВ</h1>
		</div>

		<div class=" text-center">
			<div class="">
				<div class="installment">
					<div class="installment-left">
						<p>Наша компания предоставляет своим клиентам возможность приобретения кухонного гарнитура в рассрочку, без переплаты и задействования банков. В этом случае клиент оплачивает половину стоимости готовой кухни (50%)и оставшуюся часть – равными долями до 12 месяцев, согласно утвержденному графику платежей, в установленные дни по договору.</p>
						<p>Все честно и открыто!</p>
					</div>
					<div class="installment-right dflex">
						<div class="step st1">
							<div class="number">1</div>
							<div>
								<div class="text">Мебель до 400 000 ₽</div>
								<div class="text">рассрочка до 6 месяцев</div>
							</div>
						</div>
						<div class="step st2">
							<div class="number">2</div>
							<div>
								<div class="text">от 400 000 ₽ до 800 000 ₽</div>
								<div class="text">рассрочка до 8 месяцев.</div>
							</div>
						</div>
						<div class="step st3">
							<div class="number">3</div>
							<div>
								<div class="text">Мебель от 1 млн. ₽ и выше</div>
								<div class="text">рассрочка до 12 месяцев</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="bl9">
				<div class="">
					<div class="h2">
						<h2>Как это происходит</h2>
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
								<div class="bl9_item_name">Составление проекта кухни</div>
								<div class="bl9_item_line"></div>
								<div class="bl9_item_text">Подробнее</div>
							</div>
						</div>
						<div class="bl9_item">
							<div class="bl9_l">
								<div class="bl9_item_image"><img src="img/bl9_8.jpg" alt=""></div>
								<div class="bl9_item_number">3</div>
							</div>
							<div class="bl9_r">
								<div class="bl9_item_name">Предоплата</div>
								<div class="bl9_item_line"></div>
								<div class="bl9_item_text">50% от стоимости</div>
							</div>
						</div>
						<div class="bl9_item">
							<div class="bl9_l">
								<div class="bl9_item_image"><img src="images/new/bl9_3.jpg" alt=""></div>
								<div class="bl9_item_number">4</div>
							</div>
							<div class="bl9_r">
								<div class="bl9_item_name">Рассрочка равными долями</div>
								<div class="bl9_item_line"></div>
								<div class="bl9_item_text">о 12 месяцев*</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="payment-container">
				<h2 class="black">Способы оплаты за изготовленную нами мебель:</h2>
				<div class="payment">
					<div class="payment-item">
						<img src="img/svg/payment1.svg">
						<div class="text">
							<span>Наличными в офисе</span>
						</div>
					</div>
					<div class="payment-item">
						<img src="img/svg/payment2.svg">
						<div class="text">
							<span>перечислением денег на наш банковский счет</span>
						</div>
					</div>
					<div class="payment-item">
						<img src="img/svg/payment3.svg">
						<div class="text">
							<span>Кредитной картой через переносной автомат</span>
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

<?php echo $footer; ?>