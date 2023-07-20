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

	h2.twhite {
		color: #fff;
		text-transform: uppercase;
	}

	p {
		line-height: 23px;
	}

	#content {
		color: #000;
	}

	.table {
		display: table;
		table-layout: fixed;
	}

	.cell {
		display: table-cell;
		padding: 5px;
	}

	.cell img {
		width: 100%;
		height: auto;
	}

	.cell .txt1 {
		display: block;
		margin: 15px 0 0;
		font-size: 22px;
		font-weight: bold;
	}

	.cell .txt2 {
		color: #e84c3d;
		font-size: 16px;
	}

	.information-information #content .row.form {
		background: url('images/n_aldas/partner_fon1.jpg') center top repeat;
		padding: 10px 0 50px;
		margin-bottom: 0;
	}

	.information-information #content .row.form.f2 {
		background: url('images/n_aldas/partner_fon2.jpg') center no-repeat;
	}

	.form .forma {
		display: block;
		width: 520px;
		max-width: 520px;
		margin-left: -260px;
		min-width: 320px;
		border-radius: 10px;
		box-shadow: 0 0 22px #6f6f6f;
		-moz-box-shadow: 0 0 22px #6f6f6f;
		-webkit-box-shadow: 0 0 22px #6f6f6f;
		color: #747474;
	}

	.form .mleft {
		margin-left: 50%;
	}

	.footer-top {
		padding-top: 0px;
	}

	.buttonfile1 {
		color: #e84c3d;
		font-size: 16px;
		font-weight: normal;
		text-decoration: underline;
	}

	.send.button {
		border-radius: 25px;
		font-size: 20px;
		font-weight: normal;
	}

	.lab label {
		font-size: 14px;
	}

	.priem .txt1 {
		display: block;
		margin: 15px 0;
		font-size: 22px;
		font-weight: bold;
	}

	.priem .txt2 {
		display: block;
		font-size: 16px;
		color: #e84c3d;
		height: 50px;
	}

	.priem a {
		color: #e84c3d;
		font-size: 16px;
		text-decoration: underline;
		height: 50px;
		display: block;
	}

	.priem img {
		width: 100%;
		max-width: 280px;
		height: auto;
	}

	.priem>div {
		margin-top: 20px;
	}

	@media (max-width:992px) {
		.cell .txt1 {
			font-size: 18px;
		}

		.cell .txt2 {
			font-size: 14px;
		}
	}

	@media (max-width:768px) {
		.form .forma {
			width: 320px;
			margin-left: -160px;
		}

		.cell .txt1 {
			font-size: 15px;
		}

		.cell .txt2 {
			font-size: 11px;
		}
	}

	@media (max-width:565px) {
		.table {
			display: block
		}

		.cell {
			display: block;
			width: 50%;
			float: left;
		}
	}

	@media (min-width: 1100px) {
		.information-information {
			padding: 0 20px;
		}
	}

	p {
		margin: 0;
	}

	h1 {
		margin-bottom: 40px;
		color: #222;
	}

	h2 {
		color: #222;
		margin: 0;
		font-size: 20px;
		font-weight: 500;
	}

	.bl9 {
		margin-bottom: 80px;
	}

	.designer {
		display: flex;
		margin-bottom: 80px;
		gap: 48px;
		justify-content: center;
		align-items: center;
	}

	.designer-content {
		max-width: 370px;
		display: flex;
		flex-direction: column;
		gap: 20px;
	}

	.designer-content p {
		font-size: 15px;
	}

	.designer a {
		font-size: 15px;
		font-weight: 700;
		background: #18C792;
		border-radius: 4px;
		color: #FFF;
		padding: 15px 32px;
		width: fit-content;
		transition: background-color 0.3s, box-shadow 0.3s;
	}

	.designer a:hover {
		background-color: #13B081;
		box-shadow: 0 9px 16px rgba(47, 66, 60, 0.2);
	}

	.designer a:active {
		background-color: #13B081;
		box-shadow: inset 0 2px 3px rgba(0, 0, 0, 0.12);
	}

	.designer img {
		width: 100%;
	}

	.bl9 .bl9_item.two {
		flex-basis: calc(25% - (12px * 2)/4);
	}

	form textarea {
		height: 52px;
	}

	.send.button {
		border-radius: 2px;
	}

	.radio-container {
		display: flex;
		align-items: center;
	}

	.radio-item {
		font-size: 15px;
		font-weight: 700;
		display: flex;
		gap: 8px;
		color: #878585;
		align-items: center;
		padding: 15px 20px;
	}

	.radio-item>input {
		display: none;
	}

	.radio-item>label {
		transition: 0.7s color;

	}

	.radio-item input:checked~label::after {
		position: absolute;
		border: 1px solid green;
		bottom: 0px;
	}

	.radio-item>input:checked~label {
		color: #222;
	}

	.radio_button {
		opacity: 0.3;
		transition: 0.7s opacity;
	}

	.radio-item>input:checked~.radio_button {
		opacity: 1;
	}

	@media (max-width: 1280px) {
		.designer img {
			max-width: 640px;
		}
	}

	@media (max-width: 1100px) {
		.designer img {
			max-width: 560px;
		}

		.designer {
			gap: 24px;
		}
	}

	@media (max-width: 960px) {
		.designer {
			flex-direction: column;
			gap: 48px;
		}

		.designer img {
			max-width: none;
			order: 5;
		}

		.designer-content {
			max-width: 600px;
			align-items: center;
		}

	}

	@media (max-width: 480px) {
		.radio-container {
			flex-direction: column;
			align-items: start;
			margin-top: 24px;
		}

		.radio-item {
			padding: 0;
			margin-bottom: 16px;
		}

	}
</style>
<div class="container information-new">

	<?php echo $content_top; ?>

	<ul class="breadcrumbs">
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

	<div id="content" class="info">


		<div class="container">
			<h1>Сотрудничество с нами</h1>
		</div>


		<div class="designer">
			<div class="designer-content">
				<h2>Дизайнерам интерьеров</h2>
				<p>Вы специалист в сфере дизайна интерьеров или обладатель хорошего вкуса и знаний в этой области?</p>
				<p>Мы предлагаем индивидуальные условия и рассмотрим ваши предложения. Мы предлагаем быстрый просчет индивидуального проекта, консультации личного менеджера и 3D-визуализацию. Выгодные условия, индивидуальный подход к каждому клиенту. Гарантируем выполнение всех пунктов договора.</p>
				<a href="#">Заявка на сотрудничество</a>
			</div>
			<img src="/img/designer.jpg" alt="img">
		</div>

		<div class="bl9">
			<div class="bl9_wrapper">
				<div class="bl9_item">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="img/bl9_7.jpg" alt=""></div>
						<div class="bl9_item_number">1</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Скорость</div>
						<div class="bl9_item_line"></div>
						<div class="bl9_item_text">Оперативное составление проекта, сметы и внесение правок</div>
					</div>
				</div>
				<div class="bl9_item">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="img/bl9_9.jpg" alt=""></div>
						<div class="bl9_item_number">2</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Личный менеджер</div>
						<div class="bl9_item_line"></div>
					</div>
				</div>
				<div class="bl9_item">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="img/bl9_10.jpg" alt=""></div>
						<div class="bl9_item_number">3</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Договор</div>
						<div class="bl9_item_line"></div>
						<div class="bl9_item_text">Оказание индивидуальных услуг</div>
					</div>
				</div>
				<div class="bl9_item">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="images/new/bl9_1.jpg" alt=""></div>
						<div class="bl9_item_number">4</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Бесплатная 3D визуализация</div>
						<div class="bl9_item_line"></div>
					</div>
				</div>
				<div class="bl9_item">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="img/bl9_11.jpg" alt=""></div>
						<div class="bl9_item_number">5</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Портфолио</div>
						<div class="bl9_item_line"></div>
						<div class="bl9_item_text">Пакет наших работ и материалы</div>
					</div>
				</div>
			</div>
		</div>

		<div class="designer">
			<img src="/img/designer-2.jpg" alt="img">
			<div class="designer-content">
				<h2>Строительным компаниям и архитекторам</h2>
				<p>Строительным компаниям и проектным организациям мы предлагаем комплекс услуг мебельной тематики.</p>
				<p>Спроектируем и подберем дизайн интерьера, оптимально расставим мебель с учетом особенностей конкретного помещения, сделаем 3D-визуализацию для полного представления конечного результата. Мы работаем с представлением договора и для каждого клиента подбираем выгодные условия сотрудничества.</p>
				<a href="#">Заявка на сотрудничество</a>
			</div>
		</div>

		<div class="bl9">
			<div class="bl9_wrapper">
				<div class="bl9_item two">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="images/new/bl9_2.jpg" alt=""></div>
						<div class="bl9_item_number">1</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Дизайнер-замерщик</div>
						<div class="bl9_item_line"></div>
						<div class="bl9_item_text">Со всеми образцами материалов и аксессуаров</div>
					</div>
				</div>
				<div class="bl9_item two">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="img/bl9_9.jpg" alt=""></div>
						<div class="bl9_item_number">2</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Персональный менеджер</div>
						<div class="bl9_item_line"></div>
					</div>
				</div>
				<div class="bl9_item two">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="img/bl9_10.jpg" alt=""></div>
						<div class="bl9_item_number">3</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Договор</div>
						<div class="bl9_item_line"></div>
						<div class="bl9_item_text">Индивидуального сотрудничества</div>
					</div>
				</div>
				<div class="bl9_item two">
					<div class="bl9_l">
						<div class="bl9_item_image"><img src="images/new/bl9_1.jpg" alt=""></div>
						<div class="bl9_item_number">4</div>
					</div>
					<div class="bl9_r">
						<div class="bl9_item_name">Визуализация проекта в 3D</div>
						<div class="bl9_item_line"></div>
					</div>
				</div>
			</div>
		</div>

		<div class="bl5">
			<div class="bl5_wrapper">
				<div class="bl5_l">
					<form class="form send_n">
						<h3>Заявка на сотрудничество</h3>
						<div class="bl5_row"><input type="text" name="name" required placeholder="Ваше имя"></div>
						<input type="hidden" name="form_name" value="Заявка на сотрудничество">
						<div class="bl5_row radio_wrapper">
							<div class="radio_el">
								<input type="radio" id="rad121_4" name="callto" checked="checked" value="Перезвонить">
								<label for="rad121_4" onclick="to_tel(this);">Перезвонить</label>
							</div>
							<div class="radio_el">
								<input type="radio" id="rad221_4" name="callto" value="Написать на почту">
								<label for="rad221_4" onclick="to_email(this);">Написать на почту</label>
							</div>
						</div>
						<div class="bl5_row">
							<input type="tel" name="tel" class="to_tel" required="" placeholder="Телефон" maxlength="16">
							<input type="email" name="email" class="to_email" placeholder="E-mail" maxlength="16" style="display:none">
						</div>
						<div class="bl5_row"><textarea name="comment" placeholder="Сообщение"></textarea></div>
						<div class="help hlp2">Прикрепите проект если есть</div>
						<div class="file">

							<input type="hidden" name="file" value="">
							<input type="button" value="Выбрать файл" class="buttonfile btn light" data-loading-text="Загружаем...">
							<div class="result">
								<input type="text" readonly="" name="namefile" value="Файл не выбран">
							</div>
						</div>
						<div class="bl5_row">
							<input type="submit" value="Оставить заявку" class="btn send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка..." />
						</div>
						<div class="help2">
							Нажимая кнопку «Оставить заявку», я принимаю условия Пользовательского соглашения и даю своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.
						</div>
					</form>
				</div>
				<div class="bl5_r"><img src="img/form-partner.png" alt="bl5_r"></div>
			</div>
		</div>

	</div>
</div>

<?php echo $footer; ?>