<?php echo $header; ?>

<style>
	.main_product {
		border-top: 1px solid #EFEFEF;
		padding-top: 24px
	}

	.main_product h1 {
		margin-bottom: 0
	}

	.main_product .breadcrumbs {
		border-top: none;
		padding: 0 0 13px;
		margin: 0
	}

	.product_info {
		display: flex;
		gap: 48px;
		margin-bottom: 48px;
	}

	.prod_left {
		width: 100%;
		flex: 1;
		max-width: 811px;
	}

	.prod_right {
		width: 367px
	}

	.product_info .swiper img {
		width: 100%;
		height: 516px
	}

	.product_alert {
		padding: 10px 0 20px;
		font-weight: 700;
		font-size: 11px;
		line-height: 16px
	}

	.credit_text {
		font-weight: 700;
		font-size: 11px;
		line-height: 16px;
		padding-top: 12px
	}

	.main_product .products .param {
		margin-bottom: 8px;
		display: flex
	}

	.main_product .product_info .products .param span {
		min-width: 140px
	}

	.calc_project {
		margin-top: 8px;
		width: 100%
	}

	.next_product {
		margin-top: 20px;
		display: flex;
		gap: 12px;
		justify-content: space-between;
		align-items: center
	}

	.next_product img {
		border-radius: 2px
	}

	.next_product .next_product_text {
		font-size: 13px;
		line-height: 18px;
		flex: 1;
		color: #222
	}

	.next_product .next_product_text span {
		font-size: 11px;
		line-height: 16px;
		color: #878585
	}

	.next_product .btn {
		padding: 14px 11px
	}

	.next_product .btn svg {
		display: block
	}

	.product_desc {
		margin-bottom: 85px
	}

	.product_desc .tab-content {
		padding-left: 0;
		padding-right: 0
	}

	.tab_description {
		display: flex;
		gap: 24px
	}

	.tab_description .descr_left {
		width: 55%
	}

	.tab_description .descr_right {
		width: 45%
	}

	.product_desc h2 {
		font-size: 28px;
		line-height: 34px;
		padding-bottom: 16px
	}

	.descr_left .param {
		gap: 12px
	}

	.descr_left .param>* {
		width: 50%
	}

	.descr_right {
		background: #F7F7F7;
		border-radius: 8px;
		padding: 40px 48px;
		font-size: 15px;
		line-height: 22px
	}

	.headsets {
		margin-bottom: 80px;
	}

	.headsets_wrapper {
		display: flex;
		flex-wrap: wrap;
		gap: 20px;
		padding-top: 21px
	}

	.headsets_wrapper .headset_item {
		border: 1px solid #EFEFEF;
		border-radius: 4px;
		padding: 8px 15px 24px
	}

	.headsets_wrapper .price {
		font-size: 15px;
		line-height: 22px;
		font-size: 15px;
		line-height: 22px;
		padding-bottom: 8px;
		text-align: center
	}

	.headsets_wrapper .price span {
		padding-left: 4px;
		font-weight: 700;
		font-size: 18px;
		line-height: 24px;
		color: #18C792
	}

	.headsets_wrapper .btn {
		margin: 0 9px;
		display: block
	}

	.mebel_best {
		padding: 85px 0 80px;
		background: #F7F7F7;
		margin-bottom: 80px
	}

	.mebel_best_wrapper {
		padding-top: 31px;
		display: flex;
		gap: 24px
	}

	.mebel_best_item {
		flex: 1
	}

	.mebel_best_item .image {
		height: 82px
	}

	.mebel_best_item .name {
		padding: 25px 0 8px;
		font-weight: 700;
		font-size: 18px;
		line-height: 24px
	}

	.mebel_best_item .text {
		font-size: 15px;
		line-height: 22px;
		color: #878585
	}

	.mebel_best_item .text a {
		font-weight: 700
	}

	.swiperFasad {
		height: 500px;
		flex-direction: column;
		display: flex;
	}

	.swiperFasad .swiper-slide {
		text-align: center;
		font-size: 18px;
		background: #fff;
		height: calc((100% - 16px) / 2) !important;
		display: -webkit-box;
		display: -ms-flexbox;
		display: -webkit-flex;
		display: flex;
		-webkit-box-pack: center;
		-ms-flex-pack: center;
		-webkit-justify-content: center;
		justify-content: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		-webkit-align-items: center;
		align-items: center;
		flex-direction: column;
		width: 131px
	}

	.swiperFasad .swiper-slide .name {
		font-size: 15px;
		line-height: 22px;
		padding-top: 12px
	}

	.swiperFasad .swiper-slide img {
		max-width: 100%;
	}

	.swiperFasad .swiper-pagination-bullet-active {
		background: #13B081
	}

	.delivery_wrapper {
		display: flex;
		gap: 24px
	}

	.delivery_right {
		background: #F7F7F7;
		border-radius: 8px;
		padding: 46px 48px;
		max-width: 600px;
		box-sizing: border-box
	}

	.delivery_left {
		flex: 1
	}

	.delivery_left .name {
		padding: 24px 0 8px;
		font-weight: 700;
		font-size: 18px;
		line-height: 24px
	}

	.delivery_left .text {
		font-size: 15px;
		line-height: 22px;
		color: #878585
	}

	.delivery_left {
		display: flex;
		gap: 24px;
		align-items: flex-end
	}

	.delivery_left>div {
		width: 50%;
		max-width: 288px;
		min-width: 256px
	}

	.bl4 .swiper .button-next,
	.bl4 .swiper .button-prev {
		top: 35%
	}

	@media (max-width: 1280px) {
		.product_info .swiper img {
			height: auto;
		}

		.product_info {
			align-items: flex-start;
		}

		/*.prod_right, .product_descm, .bl7{
			margin-left: 20px;
   		 margin-right: 20px;
		}
		.bl4, .headsets{
			padding-left: 20px;
			padding-right: 20px;
		}
		.product_desc .tab-content {
			padding-left: 20px;
			padding-right: 20px;
		}*/
		.tab_description,
		.swiperFasad,
		.delivery_wrapper,
		.bl9 {
			padding: 0 20px;
		}
	}

	@media (max-width: 870px) {
		.product_info {
			flex-direction: column;
			gap: 0;
		}

		.swiper-horizontal>.swiper-pagination-bullets,
		.swiper-pagination-bullets.swiper-pagination-horizontal,
		.swiper-pagination-custom,
		.swiper-pagination-fraction {
			bottom: 36px;
		}

		.prod_right {
			width: 100%;
			/*display: flex;
			flex-wrap: wrap;*/
			display: grid;
			grid-template-columns: 1fr 1fr;
			align-items: center;
			gap: 12px;
		}

		.main_product .breadcrumbs {
			grid-column: 1 / 3;
		}

		.params.products {
			grid-column: 1 / 3;
			display: grid;
			grid-template-columns: 1fr 1fr 1fr 1fr;
			grid-auto-flow: dense;
			gap: 16px;
		}

		.prod_right .products .param {
			flex-direction: column;
		}

		.credit_text {
			grid-column: 1 / 3;
		}

		.prod_right .products .param-big {
			grid-row: 1 / 3;
		}

		.container.product_info_ {
			padding: 0;
		}

		.tab_description {
			flex-direction: column;
		}

		.tab_description .descr_right {
			width: auto;
		}

		.headsets_wrapper .headset_item {
			display: flex;
			align-items: center;
			padding: 8px 12px 0 0;
		}

		.headsets_wrapper {
			display: grid;
			grid-template-columns: 1fr 1fr;
		}

		.headset_item img {
			max-width: 155px;
		}

		.btn.light {
			margin: 0;
			padding: 11px 15px;
		}

		.mebel_best_wrapper {
			display: grid;
			grid-template-columns: 1fr 1fr 1fr;
		}

		.form .file input {
			padding: 11px 18px;
		}

		.bl11 .bl11_items {
			justify-content: space-around;
		}

		.bl11 .h_menu .menu_item_el ul {
			flex-direction: column;
		}

		.bl11 .h_menu .menu_item_el ul.menu_sub_item_block {
			flex-direction: row;
			align-items: center;
		}

		.mebel_best {
			padding: 48px 28px;
		}

		.before_green {
			max-width: 330px;
		}

		.btn.arrow {
			align-self: center;
		}

		.dflex {
			justify-content: space-between;
		}

		.bl4 {
			padding: 64px 20px;
			margin-bottom: 64px;
		}

		.product_desc,
		.mebel_best {
			margin-bottom: 64px;
		}

		.descr_right {
			padding: 15px 30px;
		}

		.tab_description .descr_left {
			width: 100%;
		}

		.prod_right {
			box-sizing: border-box;
			padding: 0 20px;
		}

		.tab_description,
		.headsets,
		.sliders2 {
			padding: 0;
		}
	}

	@media (max-width: 770px) {
		.bl5_wrapper {
			flex-direction: column;
			padding: 24px 24px 0 24px;
		}

		.bl5_l {
			max-width: none;
		}

		.delivery_wrapper {
			flex-direction: column;
		}

		.delivery_left>div {
			min-width: auto;
		}
	}

	@media (max-width: 690px) {

		/*.main_container {
			padding: 0;
		}*/
		.main_product {
			padding: 0;
		}

		.swiper-horizontal>.swiper-pagination-bullets,
		.swiper-pagination-bullets.swiper-pagination-horizontal,
		.swiper-pagination-custom,
		.swiper-pagination-fraction {
			text-align: center;
			padding: 0;
		}

		.before_green,
		.product_alert,
		.btn.big,
		.next_product {
			grid-column: 1 / 3;
		}

		.prod_right .products .param-big {
			grid-row: auto;
		}

		.prod_right {
			padding: 20px;
		}

		.params.products {
			grid-template-columns: repeat(2, 1fr);
		}



		.headsets_wrapper .headset_item {
			flex-direction: column;
			padding: 8px;
		}

		.mebel_best {
			padding: 32px 20px;
		}

		.form input[type="submit"] {
			width: 100%;
		}

		.bl4 {
			padding: 48px 20px;
			margin-bottom: 48px;
		}

		.bl11 .bl11_item,
		.bl11 .h_menu .menu_sub_item_block a {
			font-size: 11px;
		}

		.prod_right .params.products .param-big:nth-child(3) {
			grid-column: 1 / 3;
		}

		.descr_right {
			font-size: 13px;
		}

		.descr_right {
			padding: 20px;
		}

		.product_desc,
		.mebel_best {
			margin-bottom: 48px;
		}

		.headsets_wrapper .price {
			display: flex;
			flex-direction: column;
		}

		.params nobr {
			text-wrap: wrap;
		}

		.products .button-next,
		.products .button-prev {
			display: none;
		}

		.bl10_wrapper {
			align-items: center;
		}

		.tab_buttons a {
			padding: 12px 10px;
		}

	}

	/* @media all and (width < 520px) {
		.param {
			flex-direction: column;
		}
	} */

	@media (max-width: 480px) {
		.params.products {
			max-width: 330px;
		}

		.bl4 {
			padding: 40px 0;
		}

		/*.main_product .products .param {
			display: block;
		}*/
		.descr_right {
			padding: 16px;
		}

		.product_desc,
		.mebel_best {
			margin-bottom: 40px;
		}

		/* .tab_description,
		.headsets,
		.prod_right,
		.sliders2 {
			padding: 0 12px;
		} */

		.headsets_wrapper {
			gap: 4px;
		}

		.headsets_wrapper .headset_item {
			padding: 0;
		}

		.mebel_best_item .name {
			padding: 0;
		}

		.mebel_best,
		.bl5_wrapper {
			padding: 20px 20px;
		}

		.mebel_best .container {
			padding: 0;
		}

		.bl11 .bl11_items {
			justify-content: start;
		}

		.headsets_wrapper .headset_item>div {
			align-self: stretch;
		}

		.mebel_best_wrapper {
			display: flex;
			flex-direction: column;
		}

		.mebel_best_item {
			display: grid;
			grid-template-columns: 1fr 1fr;
			align-items: center;
		}

		.mebel_best_item>.image {
			grid-row: 1 / 3;
		}


	}

	.swiper_free {
		overflow: hidden;
	}

	.swiper_free .swiper-slide {
		width: auto;
		box-sizing: border-box;
		display: block;
	}
</style>

<div class="main_product">
	<div class="container product_info_">
		<div class="product_info">
			<div class="prod_left swiper mainSwiper">
				<div class="swiper-wrapper">

					<?php if ($thumb || $images) { ?>

						<?php if ($thumb) { ?>
							<div class="swiper-slide"><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>

						<?php } ?>
						<?php if ($images) { ?>
							<?php foreach ($images as $image) { ?>
								<div class="swiper-slide"><a class="thumbnail" rel="nofollow" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>">
										<img class="swiper-lazy" src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
							<?php } ?>
						<?php } ?>

					<?php } ?>

				</div>
				<div class="button-next"></div>
				<div class="button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
			<div class="prod_right">
				<ul class="breadcrumbs">
					<?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
						<?php if ($breadcrumb['href']) { ?>
							<? if ($key == 0) { ?>
								<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" itemref="breadcrumb-<?= ($key + 1); ?>">
								<? } else { ?>
								<li itemprop="child" itemscope itemtype="http://data-vocabulary.org/Breadcrumb" id="breadcrumb-<?= ($key); ?>" itemref="breadcrumb-<?= ($key + 1); ?>">
								<? } ?>
								<a href="<?php echo $breadcrumb['href']; ?>" itemprop="url"><span itemprop="title"><?php echo $breadcrumb['text']; ?></span></a>
							<?php } else { ?>
								<li itemprop="child" itemscope itemtype="http://data-vocabulary.org/Breadcrumb" id="breadcrumb-<?= ($key); ?>">
									<span itemprop="title"> <?php echo $breadcrumb['text']; ?></span>
								<?php } ?>
								</li>
							<?php } ?>
				</ul>
				<h1 class="before_green"><?php echo $heading_title; ?></h1>
				<div class="product_alert">У представленной модели могут быть изменены размеры, расцветка и комплектация по желанию клиента</div>
				<div class="params products">
					<?php if ($fasad) { ?>
						<div class="param param-big"><span>Тип фасада:</span>
							<div><?php echo $fasad; ?></div>
						</div>
					<?php } ?>
					<div class="param param-big"><span>Фурнитура:</span>
						<div>Blum base* (Австрия)</div>
					</div>
					<div class="param param-big"><span>Цвет фасада:</span>
						<div>1000 вариантов по раскладке RAL <br><a href="#modal-colors" onclick="return false" data-modal="modal-colors">Смотреть цвета</a></div>
					</div>
					<div class="param"><span>Цена за м/п:</span> <span class="price"><?php echo $price; ?></span></div>
					<div class="param"><span>Цена проекта от:</span>
						<span class="price">
							<span class="new_price"><?php echo $price_got_new; ?></span>
							<span class="ald_price"><?php echo $price_got_old; ?></span>
						</span>
					</div>
				</div>
				<div class="credit_text">** Рассрочка на 6 месяцев при условии 50% предоплаты</div>
				<a href="#calc_project" class="btn big calc_project" onclick="return false" data-modal="calc_project">Рассчитать проект</a>

				<?php if (0 && $pr_prev) { ?><a class="prev" href="<?php echo $pr_prev; ?>" alt="<?php echo $pr_prev_name; ?>" title="<?php echo $pr_prev_name; ?>">
						<< Предыдущая модель</a><?php } ?>
						<?php if ($pr_next) { ?>
							<a href="<?php echo $pr_next; ?>" class="next_product" title="<?php echo $pr_next_name; ?>">
								<img src="<?php echo $pr_next_img; ?>" alt="<?php echo $pr_next_name; ?>">
								<div class="next_product_text">
									<span>Следующая кухня</span><br>
									<?php echo $pr_next_name; ?>
								</div>
								<div class="next_product_button btn light"><svg width="16" height="10" viewBox="0 0 16 10" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M1.5 5H14.5M14.5 5L11 1.5M14.5 5L11 8.5" stroke="#18C792" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
									</svg></div>
							</a>
						<?php } ?>
			</div>
		</div>
	</div>
	<div id="calc_project" class="container_form">
		<div class="form_wrapper">
			<div class="form_close btn">
				<svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path>
					<path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path>
				</svg>
			</div>
			<div class="form_left"></div>
			<div class="form_right">
				<form class="form">
					<input type="hidden" name="model" value="<?= $model; ?>" />
					<input type="hidden" name="title" value="<?= $heading_title; ?>" />
					<h3>Рассчитать проект</h3>
					<!--<div class="help">Бесплатный вызов специалиста для точного замера помещения, консультации и составления дизайн-проекта мебели.</div>-->
					<div class="bl5_row"><input type="text" name="name" required="" placeholder="Ваше имя"></div>
					<div class="bl5_row radio_wrapper">
						<div class="radio_el">
							<input type="radio" id="rad12" name="call2" checked="">
							<label for="rad12">Перезвонить</label>
						</div>
						<div class="radio_el">
							<input type="radio" id="rad22" name="call2">
							<label for="rad22">Написать на почту</label>
						</div>
					</div>
					<div class="bl5_row">
						<input type="tel" name="tel" required="" placeholder="Телефон" maxlength="16">
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
						<input type="submit" value="Оставить заявку" class="btn send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">
					</div>
					<div class="help2">Нажимая кнопку «Оставить заявку», я принимаю условия Пользовательского соглашения и даю своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.</div>
				</form>
			</div>
		</div>
	</div>

	<div class="product_desc container">
		<div class="tab_buttons" id="myTab" role="tablist">
			<div class="swiper-container swiper_free">
				<div class="container1 swiper-wrapper">
					<a class="nav-link swiper-slide selected" data-toggle="tab" href="#tab1_" role="tab" aria-controls="tab5" aria-selected="true" onclick="return false">Описание</a>
					<a class="nav-link swiper-slide" data-toggle="tab" href="#tab2_" role="tab" aria-controls="tab5" aria-selected="false" onclick="return false">Фасады</a>
					<a class="nav-link swiper-slide" data-toggle="tab" href="#tab3_" role="tab" aria-controls="tab5" aria-selected="false" onclick="return false">Декор</a>
					<a class="nav-link swiper-slide" data-toggle="tab" href="#tab4_" role="tab" aria-controls="tab5" aria-selected="false" onclick="return false">Доставка и сборка</a>
					<a class="nav-link swiper-slide" data-toggle="tab" href="#tab5_" role="tab" aria-controls="tab5" aria-selected="false" onclick="return false">Купить в рассрочку</a>
				</div>
			</div>
		</div>
		<div class="container">

			<div class="tab-content">
				<div class="tab-pane selected" id="tab1_">
					<div class="tab_description">
						<div class="descr_left products">
							<h2>Технические данные модели:</h2>

							<div class="params">
								<div class="param"><span><?php echo $text_model; ?></span>
									<div><?php echo $model; ?></div>
								</div>

								<?php if ($mas_cat_attribute) { ?>
									<?php foreach ($mas_cat_attribute as $key => $attributes) { ?>

										<div class="param" itemprop="itemListElement" itemscope itemtype="https://schema.org/NameValueStructure">
											<span itemprop="name"><?php echo $key; ?>:</span>
											<div>
												<?php foreach ($attributes as $key => $attribute) { ?>
													<a href="<?= $attribute['href']; ?>">
														<nobr style="font-weight:normal;" itemprop="value"><?= $attribute['name']; ?></nobr>
													</a>
												<?php } ?>
											</div>
										</div>
									<?php } ?>
								<?php } ?>
								<?php if ($attribute_groups) { ?>
									<?php foreach ($attribute_groups as $attribute_group) { ?>
										<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
											<div class="param"><span><?php echo $attribute['name']; ?>:</span>
												<div><?php echo $attribute['text']; ?><div>
														<div>
														<?php } ?>
													<?php } ?>
												<?php } ?>
														</div>
													</div>
													<div class="descr_right">
														<h2>Подробное описание:</h2>
														<div class="description">
															<?php echo $description; ?>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab2_">
												<div class="swiper swiperFasad">
													<div class="swiper-wrapper">
														<?php foreach ($data['dop3'] as $dop3) { ?>
															<div class="swiper-slide thumbnails1">
																<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?= $placeholder; ?>" data-original="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>"></a>
																<div class="name"><?php echo $dop3['name']; ?></div>
															</div>
														<?php } ?>

														<?php foreach ($fasady_emal_r as $dop3) { ?>
															<div class="swiper-slide thumbnails2">
																<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?= $placeholder; ?>" data-original="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>"></a>
																<div class="name"><?php echo $dop3['name']; ?></div>
															</div>
														<?php } ?>
														<?php foreach ($fasady_emal_br as $dop3) { ?>
															<div class="swiper-slide thumbnails3">
																<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?= $placeholder; ?>" data-original="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>"></a>
																<div class="name"><?php echo $dop3['name']; ?></div>
															</div>
														<?php } ?>
														<?php foreach ($fasady_emal_g as $dop3) { ?>
															<div class="swiper-slide thumbnails4">
																<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?= $placeholder; ?>" data-original="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>"></a>
																<div class="name"><?php echo $dop3['name']; ?></div>
															</div>
														<?php } ?>
														<?php foreach ($fasady_plastik as $dop3) { ?>
															<div class="swiper-slide thumbnails5">
																<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?= $placeholder; ?>" data-original="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>"></a>
																<div class="name"><?php echo $dop3['name']; ?></div>
															</div>
														<?php } ?>

													</div>
													<div class="swiper-pagination"></div>
													<div class="button-next"></div>
													<div class="button-prev"></div>
												</div>

											</div>
											<div class="tab-pane" id="tab3_">
												<div class="swiper swiperFasad">
													<div class="swiper-wrapper">
														<?php foreach ($data['dekor'] as $dop3) { ?>
															<div class="swiper-slide thumbnails6">
																<a class="href" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>">
																	<img src="<?= $placeholder; ?>" data-original="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>">
																</a>
																<div class="name"><?php echo $dop3['name']; ?></div>
															</div>
														<?php } ?>
													</div>
													<div class="swiper-pagination"></div>
													<div class="button-next"></div>
													<div class="button-prev"></div>
												</div>
											</div>

											<div class="tab-pane" id="tab4_">
												<div class="delivery_wrapper">
													<div class="delivery_left">
														<div class="delivery">
															<img src="images/new/delivery.svg" alt="delivery">
															<div class="name">Доставка</div>
															<div class="text">Доставим по Москве и поднимем до квартиры бесплатно</div>
														</div>
														<div class="assembly">
															<img src="images/new/assembly.svg" alt="assembly">
															<div class="name">Сборка</div>
															<div class="text">Услуга стоит 10% от цены приобретения</div>
														</div>
													</div>
													<div class="delivery_right">
														Все наши специалисты по доставке и сборке мебели – мастера высокой квалификации. Они прекрасно знают свою работу и сделают ее максимально быстро и качественно, не оставив после себя грязи и мусора.
													</div>
												</div>
											</div>

											<div class="tab-pane" id="tab5_">
												<div class="bl9">
													<div class="title">
														Специальное предложение от "Альдас кухни". Рассрочка до 6 месяцев за покупку. Никаких переплат и банковских договоров. Условии акции:
													</div>
													<div class="bl9_wrapper">
														<div class="bl9_item">
															<div class="bl9_item_number">1</div>
															<div class="bl9_item_image"><img src="images/new/bl9_1.jpg" alt=""></div>

															<div class="bl9_item_line"></div>
															<div class="bl9_item_text">Выберите понравившуюся кухню</div>
														</div>
														<div class="bl9_item">
															<div class="bl9_item_number">2</div>
															<div class="bl9_item_image"><img src="images/new/bl9_2.jpg" alt=""></div>
															<div class="bl9_item_line"></div>
															<div class="bl9_item_text">Оформите обратный звонок или покупку</div>
														</div>
														<div class="bl9_item">
															<div class="bl9_item_number">3</div>
															<div class="bl9_item_image"><img src="images/new/bl9_3.jpg" alt=""></div>
															<div class="bl9_item_line"></div>
															<div class="bl9_item_text">Вам перезвонит наш менеджер, с которым Вы сможете уточнить все интересующие Вас вопросы</div>
														</div>
														<div class="bl9_item">
															<div class="bl9_item_number">4</div>
															<div class="bl9_item_image"><img src="images/new/bl9_4.jpg" alt=""></div>
															<div class="bl9_item_line"></div>
															<div class="bl9_item_text">При посещении офиса оплатите 50% стоимости мебели и оформите договор рассрочки</div>
														</div>
														<div class="bl9_item">
															<div class="bl9_item_number">5</div>
															<div class="bl9_item_image"><img src="images/new/bl9_5.jpg" alt=""></div>
															<div class="bl9_item_line"></div>
															<div class="bl9_item_text">Оплачиваете остаточную сумму в течении 6 месяцев. Способы оплаты - в офисе, карточкой, банковский перевод</div>
														</div>
													</div>
												</div>
											</div>
							</div>
						</div>
					</div>

					<?php if (mb_stripos(strtolower($heading_title), 'кухня') !== false) {  ?>
						<div class="container">
							<div class="headsets">
								<h2 class="before_green">Стоимость гарнитура</h2>
								<div class="headsets_wrapper">
									<div class="headset_item">
										<img src="<?= $placeholder; ?>" data-original="<?php echo MAIN_HTTPS_SERVER ?>images/new/headset_1.jpg" alt="Гарнитур">
										<div>
											<div class="price" data-price="<?= $price_int_got2; ?>">2 метра: <span><?= $price_got2; ?></span></div>
											<a href="#pred_zakaz" data-modal="pred_zakaz" class="btn light" onclick="return false">Заказать в один клик</a>
										</div>
									</div>
									<div class="headset_item">
										<img src="<?= $placeholder; ?>" data-original="images/new/headset_2.jpg" alt="Гарнитур">
										<div>
											<div class="price" data-price="<?= $price_int_got3; ?>">3 метра: <span><?= $price_got3; ?></span></div>
											<a href="#pred_zakaz" data-modal="pred_zakaz" class="btn light" onclick="return false">Заказать в один клик</a>
										</div>
									</div>
									<div class="headset_item">
										<img src="<?= $placeholder; ?>" data-original="images/new/headset_3.jpg" alt="Гарнитур">
										<div>
											<div class="price" data-price="<?= $price_int_got4; ?>">4 метра: <span><?= $price_got4; ?></span></div>
											<a href="#pred_zakaz" data-modal="pred_zakaz" class="btn light" onclick="return false">Заказать в один клик</a>
										</div>
									</div>
									<div class="headset_item">
										<img src="<?= $placeholder; ?>" data-original="images/new/headset_4.jpg" alt="Гарнитур">
										<div>
											<div class="price" data-price="<?= $price_int_got5; ?>">5 метра: <span><?= $price_got5; ?></span></div>
											<a href="#pred_zakaz" data-modal="pred_zakaz" class="btn light" onclick="return false">Заказать в один клик</a>
										</div>
									</div>
									<div class="headset_item">
										<img src="<?= $placeholder; ?>" data-original="images/new/headset_5.jpg" alt="Гарнитур">
										<div>
											<div class="price" data-price="<?= $price_int_got3; ?>">3 метра: <span><?= $price_got3; ?></span></div>
											<a href="#pred_zakaz" data-modal="pred_zakaz" class="btn light" onclick="return false">Заказать в один клик</a>
										</div>
									</div>
									<div class="headset_item">
										<img src="<?= $placeholder; ?>" data-original="images/new/headset_6.jpg" alt="Гарнитур">
										<div>
											<div class="price" data-price="<?= $price_int_got3_5; ?>">3,5 метра: <span><?= $price_got3_5; ?></span></div>
											<a href="#pred_zakaz" data-modal="pred_zakaz" class="btn light" onclick="return false">Заказать в один клик</a>
										</div>
									</div>
									<div class="headset_item">
										<img src="<?= $placeholder; ?>" data-original="images/new/headset_7.jpg" alt="Гарнитур">
										<div>
											<div class="price" data-price="<?= $price_int_got4; ?>">4 метра: <span><?= $price_got4; ?></span></div>
											<a href="#pred_zakaz" data-modal="pred_zakaz" class="btn light" onclick="return false">Заказать в один клик</a>
										</div>
									</div>
									<div class="headset_item">
										<img src="<?= $placeholder; ?>" data-original="images/new/headset_8.jpg" alt="Гарнитур">
										<div>
											<div class="price" data-price="<?= $price_int_got5; ?>">5 метра: <span><?= $price_got5; ?></span></div>
											<a href="#pred_zakaz" data-modal="pred_zakaz" class="btn light" onclick="return false">Заказать в один клик</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					<? } ?>

					<div class="mebel_best">
						<div class="container">
							<h2 class="before_green">Чем наша мебель лучше</h2>
							<div class="mebel_best_wrapper">
								<div class="mebel_best_item">
									<div class="image">
										<img src="images/new/mebel_best_1.svg" alt="Экологиность">
									</div>
									<div class="name">Экологиность</div>
									<div class="text">Стандарт <a href="">Е1</a> европейское сырье</div>
								</div>
								<div class="mebel_best_item">
									<div class="image"><img src="images/new/mebel_best_2.svg" alt="Надёжность"></div>
									<div class="name">Надёжность</div>
									<div class="text">Защита стекл от осколков и надежная <a href="">фиксация</a> мебели</div>
								</div>
								<div class="mebel_best_item">
									<div class="image"><img src="images/new/mebel_best_3.svg" alt="Европейская фурнитура"></div>
									<div class="name">Европейская фурнитура</div>
									<div class="text"><a href="">Blum</a> / GTV</div>
								</div>
								<div class="mebel_best_item">
									<div class="image"><img src="images/new/mebel_best_4.svg" alt="Мы фабрика"></div>
									<div class="name">Мы фабрика</div>
									<div class="text">Быстрые сроки от <a href="http://">14</a> дней</div>
								</div>
								<div class="mebel_best_item">
									<div class="image"><img style="margin-top:-10px" src="images/new/mebel_best_5.svg" alt="Лучший ассортимент"></div>
									<div class="name">Лучший ассортимент</div>
									<div class="text"><a href="http://">10000+</a> вариантов</div>
								</div>
								<div class="mebel_best_item">
									<div class="image"><img src="images/new/mebel_best_6.svg" alt="Доступная цена"></div>
									<div class="name">Доступная цена</div>
									<div class="text">Честная цена от фабрики без переплат <a href="http://">-45%</a></div>
								</div>
							</div>
						</div>
					</div>

					<div class="bl5 container">
						<div class="bl5_wrapper">
							<div class="bl5_l">
								<form class="form">
									<h3>Закажите расчет проекта или вызовите дизайнера-замерщика</h3>
									<div class="help">Что вы хотите получить?</div>
									<div class="bl5_row">
										<select name="type" class="nice-select">
											<option value="Заказать расчёт" selected>Заказать расчёт</option>
											<option value="Вызвать дизайнера-замерщика">Вызвать дизайнера-замерщика</option>
										</select>
									</div>
									<div class="bl5_row"><input type="text" name="name" required placeholder="Ваше имя"></div>
									<div class="bl5_row"><input type="tel" name="tel" required placeholder="Телефон"></div>
									<div class="bl5_row"><input type="email" name="email" required placeholder="E-mail"></div>
									<div class="help hlp2">Прикрепите проект если есть</div>
									<div class="file">

										<input type="hidden" name="file" value="">
										<input type="button" value="Выбрать файл" id="buttonfile" class="btn light" data-loading-text="Загружаем...">
										<input type="text" readonly="" name="namefile" value="Файл не выбран">
									</div>
									<div class="bl5_row">
										<input type="submit" value="Оставить заявку" class="btn send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка..." />
									</div>
									<div class="help2">
										Нажимая кнопку «Оставить заявку», я принимаю условия Пользовательского соглашения и даю своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.
									</div>
								</form>
							</div>
							<div class="bl5_r"><img src="images/svg/bl5.png" alt="bl5_r"></div>
						</div>
					</div>

					<div class="bl7 container">
						<div class="sliders2 container">
							<div class="h2">
								<h2 class="before_green">Схожие товары</h2>
							</div>

							<div class="sl_row products swiper mebel1">
								<div class="swiper-wrapper">
									<?php foreach ($products as $product) { ?>
										<div class="swiper-slide product_slide">
											<div class="swiper product_images_slider">
												<div class="swiper-wrapper">
													<?php foreach ($product['images'] as $image) { ?>
														<a href="<?php echo $product['href']; ?>" class="swiper-slide"><img src="<?= $image['thumb'] ?>" alt="<?php echo $product['name']; ?>"></a>
													<?php } ?>
												</div>
												<div class="swiper-pagination"></div>
											</div>
											<div class="name"><?php echo $product['name']; ?></div>
											<div class="param"><span>Материал фасадов:</span> <?php echo $product['fasad']; ?></div>
											<?php if ($product['price']) { ?>
												<div class="param"><span>Цена за метр:</span>
													<?php if (!$product['special']) { ?>
														<span class="price"><?php echo $product['price']; ?></span>
													<?php } else { ?>
														<span class="price"><span class="new_price"><?php echo $product['special']; ?></span><span class="ald_price"><?php echo $product['price']; ?> ₽</span></span>
													<?php } ?>
												</div>
												<div class="param"><span>Цена проекта от:</span> <span class="price"><span class="new_price">136 900 ₽</span><span class="ald_price">166 900 ₽</span></span></div>
											<?php } ?>
										</div>
									<?php } ?>

								</div>
								<div class="button-next"></div>
								<div class="button-prev"></div>
								<div class="swiper-pagination_line">
									<div class="swiper-pagination mebel"></div>
								</div>
							</div>

						</div>
					</div>

					<? // module/news_carousel 
					$news = $this->load->controller('module/news_carousel');
					echo $news;
					?>

					<?php if (mb_stripos(strtolower($heading_title), 'кухня') !== false && $products_stoly) { ?>
						<div class="bl7 container">
							<div class="sliders2 container">
								<div class="h2">
									<h2 class="before_green">Столы и стулья</h2>
								</div>

								<div class="sl_row products swiper mebel1">
									<div class="swiper-wrapper">

										<?php foreach ($products_stoly as $product) { ?>
											<div class="swiper-slide product_slide">
												<div class="swiper product_images_slider">
													<div class="swiper-wrapper">
														<?php foreach ($product['images'] as $image) { ?>
															<a href="<?php echo $product['href']; ?>" class="swiper-slide"><img src="<?= $image['thumb'] ?>" alt="<?php echo $product['name']; ?>"></a>
														<?php } ?>
													</div>
													<div class="swiper-pagination"></div>
												</div>
												<div class="name"><?php echo $product['name']; ?></div>
												<div class="param"><span>Материал фасадов:</span> <?php echo $product['fasad']; ?></div>
												<?php if ($product['price']) { ?>
													<div class="param"><span>Цена за метр:</span>
														<?php if (!$product['special']) { ?>
															<span class="price"><?php echo $product['price']; ?></span>
														<?php } else { ?>
															<span class="price"><span class="new_price"><?php echo $product['special']; ?></span><span class="ald_price"><?php echo $product['price']; ?> ₽</span></span>
														<?php } ?>
													</div>
													<div class="param"><span>Цена проекта от:</span> <span class="price"><span class="new_price">136 900 ₽</span><span class="ald_price">166 900 ₽</span></span></div>
												<?php } ?>
											</div>
										<? } ?>

									</div>
									<div class="button-next"></div>
									<div class="button-prev"></div>
									<div class="swiper-pagination_line">
										<div class="swiper-pagination mebel"></div>
									</div>
								</div>

							</div>
						</div>
					<? } ?>

					<?php if (mb_stripos(strtolower($heading_title), 'кухня') !== false && $products_tehnika) { ?>
						<div class="bl7 container">
							<div class="sliders2 container">
								<div class="h2">
									<h2 class="before_green">Техника</h2>
								</div>

								<div class="sl_row products swiper mebel1" style="margin-bottom: 0;">
									<div class="swiper-wrapper">
										<?php foreach ($products_tehnika as $product) { ?>
											<div class="swiper-slide product_slide">
												<div class="swiper product_images_slider">
													<div class="swiper-wrapper">
														<?php foreach ($product['images'] as $image) { ?>
															<a href="<?php echo $product['href']; ?>" class="swiper-slide"><img src="<?= $image['thumb'] ?>" alt="<?php echo $product['name']; ?>"></a>
														<?php } ?>
													</div>
													<div class="swiper-pagination"></div>
												</div>
												<div class="name"><?php echo $product['name']; ?></div>
												<div class="param"><span>Материал фасадов:</span> <?php echo $product['fasad']; ?></div>
												<?php if ($product['price']) { ?>
													<div class="param"><span>Цена за метр:</span>
														<?php if (!$product['special']) { ?>
															<span class="price"><?php echo $product['price']; ?></span>
														<?php } else { ?>
															<span class="price"><span class="new_price"><?php echo $product['special']; ?></span><span class="ald_price"><?php echo $product['price']; ?> ₽</span></span>
														<?php } ?>
													</div>
													<div class="param"><span>Цена проекта от:</span> <span class="price"><span class="new_price">136 900 ₽</span><span class="ald_price">166 900 ₽</span></span></div>
												<?php } ?>
											</div>
										<? } ?>
									</div>
									<div class="button-next"></div>
									<div class="button-prev"></div>
									<div class="swiper-pagination_line">
										<div class="swiper-pagination mebel"></div>
									</div>
								</div>

							</div>
						</div>
					<? } ?>

				</div>


				<script>
					/*$(function() {
						$("#tabs ul a").tabs();
						$("#tabs2 ul a").tabs();
					});
					*/
				</script>


				<div class="content hidden">
					<div class="container">
						<div class="row">


							<div class="tovar-top">
								<div class="tovar-grey">
									<div class="container">
										<div class="row">
											<div class="col-lg-7 col-md-6 col-sm-12">

												<div class="col-lg-5 col-md-6 col-sm-12">



													<div class="wrapper pre_forma">

														<? /* <div class="tovar-button0"><a rel="nofollow" onclick="call(2); return false;">Заказать готовую модель</a></div> */ ?>
														<div class="tovar-button1 ff1"><a rel="nofollow" onclick="return false;">Фасады</a></div>
														<div class="tovar-button1 ff2"><a rel="nofollow" onclick="return false;">Цвета</a></div>
														<?/*<div class="tovar-button1 ff4"><a rel="nofollow" onclick="return false;">Аксессуары</a></div>*/ ?>
														<div style="float: right;" class="tovar-button1<?php echo (!$onclick) ? ' ff3' : ''; ?>"><a rel="nofollow" onclick="<?php echo (!$onclick) ? 'return false' : $onclick; ?>;">Онлайн-расчет</a></div>
													</div>
													<!-- <script async src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
														<script async src="//yastatic.net/share2/share.js"></script>
														<div class="ya-share2" style="margin-bottom:10px;" data-services="collections,vkontakte,facebook,odnoklassniki,moimir,gplus,pinterest,viber,whatsapp,skype,telegram" data-image="https://www.aldas.ru/image/catalog/logo.png"></div>
														-->
													<script>
														document.addEventListener('DOMContentLoaded', function() {
															$('#id2 input[type="checkbox"]').change(function() {
																calc();
															});


															function calc() {
																sborka = 0;
																dost = parseInt($('#id2 input[name="dost"]:checked').attr('value'));
																sbor = parseInt($('#id2 input[name="sbor"]:checked').attr('value'));
																price = <?php echo (int)$price_got_int; ?>;
																if (sbor) {
																	sborka = price * 0.1;
																	price = price * 1.1;

																}
																if (dost) {
																	price = price + dost;
																}
																price = parseInt(price);
																$("#total span").html(price + ' руб.');
																$("input[name='total']").attr('value', price);
																$("input[name='sborka']").attr('value', sborka);

															}
														});
													</script>

													<div id="id3" class="forma tovar-white">
														<div class="title">Бесплатный замер</div>
														<div class="forma_content">
															<input type="hidden" name="model" value="<?= $model; ?>" />
															<input type="hidden" name="title" value="<?= $heading_title; ?>" />
															<div class="fio">Ф.И.О.: <input type="text" name="name" value="" style="width:150px;" /><br />
																Телефон, почта: <input type="text" name="tel" value="" /><br />
																Адрес: <input type="text" name="adress" value="" style="width:155px;" />
															</div>
															<a href="" style="float:none;" onclick="return false;" rel="nofollow" class="send button">Заказать</a>
														</div>



													</div>

												</div>
											</div>
											<div id="tabs" class="tabs">

												<ul>
													<li><a href="#tabs-0">Описание</a></li>
													<li><a href="#tabs-2">Фасады</a></li>
													<li><a href="#tabs-3">Декор</a></li>
													<li><a href="#tabs-1">Параметры</a></li>
													<!--<li><a href="#tabs-2">Отзывы</a></li>-->
													<!-- <li><a href="#tabs-3">Как заказать</a></li> -->
													<li><a href="#tabs-4">Доставка и сборка</a></li>
													<li><a href="#tabs-5">Купить в рассрочку</a></li>
												</ul>


												<div id="tabs-4">
													<div class="wrapper tovar-text4">
														<p style="text-align: justify;">
														<table>
															<tr>
																<td><img src="<?= $placeholder; ?>" data-original="https://www.aldas.ru/image/catalog/icon/zakaz-grey-pic2.png">
																</td>
																<td><b>Доставка по Москве</b> и подъем до квартиры бесплатно</td>
															</tr>
														</table>
														</p>
														<p style="text-align: justify;">
														<table>
															<tr>
																<td><img src="<?= $placeholder; ?>" data-original="https://www.aldas.ru/image/catalog/icon/zakaz-grey-pic4.png">
																</td>
																<td>Сборка - услуга эта
																	<span style="font-weight: bold;">стоит 10% от цены приобретения</span>
																</td>
															</tr>
														</table>
														</p>
														Все наши специалисты по доставке и сборке мебели – мастера высокой квалификации. Они прекрасно знают свою работу и сделают ее максимально быстро и качественно, не оставив после себя грязи и мусора.
													</div>
												</div>
												<div id="tabs-5">
													<div class="wrapper tovar-text4">
														Специальное предложение от "Альдас кухни". Рассрочка до 6 месяцев за покупку. Никаких переплат и банковских договоров.
														Условии акции :
														<ul>
															<li>1. Выберите понравившуюся кухню</li>
															<li>2. Оформите обратный звонок или покупку</li>
															<li>3. Вам перезвонит наш менеджер, с которым Вы сможете уточнить все интересующие Вас вопросы</li>
															<li>4. При посещении офиса оплатите 50% стоимости мебели и оформите договор рассрочки</li>
															<li>5. Оплачиваете остаточную сумму в течении 6 месяцев. Способы оплаты - в офисе, карточкой, банковский перевод</li>
														</ul>
													</div>
												</div>

											</div>


										</div>
									</div>
								</div>



							</div>
						</div>


					</div>
				</div>
			</div>


			<script>
				document.addEventListener('DOMContentLoaded', function() {

					$('.headset_item a').on('click', function() {

						var obj = $(this).closest('.headset_item');
						itogdop1 = true;
						itogdop2 = false;
						console.log(obj);
						calcitog(obj);
						/*setTimeout(function() {
							//$('#z1').click();
							$('#pred_zakaz').addClass('active');

						}, 300);*/

					});

					itogo = 0;
					itogdop1 = false;
					itogdop2 = false;
					itogdop3 = 0;

					sumdop3 = 0;
					dop3_html = '';



					function calcitog(obj = false) {

						//html_name_price = '';
						html_img = '';
						if (itogdop1 && obj) {

							price = obj.find('.price').data('price');
							res = sumdop3 + ~~price;

							dop1_img = obj.find('img').attr('src');
							console.log(dop1_img);
							dop1_price = obj.find('.price').html();
							dop1_name = obj.find('.tovar-box1-text').html();
							//dop1_price = price;
							//html_name_price = '      Кухня ' + dop1_name + ' - цена: <span style="color: #E74C3C;font-size:16px;">' + dop1_price + ' руб.</span></b>';
							html_img = '      <img src="' + dop1_img + '">';
							$('#pred_zakaz .form_left').html(html_img);
							$('#pred_zakaz .price').html(dop1_price);
						}
					}

					$('#z1').on('click', function() {
						$('#pred_zakaz').addClass('active');
					});
					$('#z2').on('click', function() {
						$('#pred_zakaz h1').after('<b>Вызов замерщика</b><br/><br/>');
						$('#pred_zakaz').modal('show');
					});


					$('.fancy-checkbox span').on('click', function() {
						var obj = $(this).parent().find('input');
						//$(this).parent().parent().parent().prev().prev().addClass('red');
						if (obj.attr("checked")) {
							$(this).parent().parent().parent().prev().prev().removeClass('red');
						} else {
							$(this).parent().parent().parent().prev().prev().addClass('red');
						}
					});

					$(document).ready(function() {


						/*$("#owl-demo").owlCarousel({
							lazyLoad: true,
							items: 1,
							itemsDesktop: [1199, 1],
							itemsDesktopSmall: [992, 1],
							itemsTablet: [768, 1],
							itemsMobile: [320, 1],
							pagination: false,
							navigation: true,
							paginationNumbers: false
							});

							$("#owl-demo1").owlCarousel({
							lazyLoad: true,
							items: 3,
							itemsDesktop: [1199, 3],
							itemsDesktopSmall: [992, 3],
							itemsTablet: [768, 3],
							itemsMobile: [320, 3],
							pagination: false,
							navigation: true,
							paginationNumbers: false
							});
						});*/


						$('.ff1').on('click', function() {
							$('#modal-fasad').modal('show');
						});
						$('.ff2').on('click', function() {
							$('#modal-colors').modal('show');
						});
						/*$('.ff3').on('click',function(){
						  $('#modal-stol').modal('show');
						});*/

						/*$('.ff4').on('click',function(){
						  $('#modal-access').modal('show');
						});*/
					});
				});
			</script>

			<div id="modal"> </div>

			<div id="modal-fasad" class="modal" style="display:none">
				<div class="modal-dialog" style="width:90%;">
					<div class="modal-content">
						<div class="modal-header"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h3 class="modal-title">Варианты фасадов</h3>
						</div>
						<div class="modal-body">
							<div id="tabs2" class="tabs">
								<a class="colours" onclick="$('#modal-fasad .close').click();$('.ff2').click();">Варианты цветов >></a>
								<ul>
									<li><a href="#tabs2-0">Массив дуба</a></li>
									<li><a href="#tabs2-1">МДФ эмаль</a></li>
									<li><a href="#tabs2-2">Пластик</a></li>
								</ul>
								<div id="tabs2-0">
									<div class="1tovar-top1">
										<div class="1tovar-box">
											<div class="wrapper">

												<?php foreach ($data['dop3'] as $dop3) { ?>
													<div class="tovar-box1 thumbnails7">
														<div class="tovar-box1-border">
															<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>">
																<img src="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>"></a>
															<div class="price"><?php echo $dop3['name']; ?></div>
															<div class="description"><?php echo $dop3['description']; ?></div>
														</div>
													</div>
												<?php } ?>

											</div>
										</div>
									</div>
								</div>

								<div id="tabs2-1">
									<div class="1tovar-top1">

										<div class="1tovar-box">
											<h3>Фасады Эмаль рубашка</h3>
											<div class="wrapper">

												<?php foreach ($fasady_emal_r as $dop3) { ?>
													<div class="tovar-box1 thumbnails8">
														<div class="tovar-box1-border">
															<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>"></a>
															<div class="price"><?php echo $dop3['name']; ?></div>
														</div>
													</div>
												<?php } ?>

											</div>
										</div>
										<div class="1tovar-box">
											<h3>Фасады Эмаль без рубашки</h3>
											<div class="wrapper">

												<?php foreach ($fasady_emal_br as $dop3) { ?>
													<div class="tovar-box1 thumbnails9">
														<div class="tovar-box1-border">
															<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>"></a>
															<div class="price"><?php echo $dop3['name']; ?></div>
															<div class="description"><?php echo $dop3['description']; ?></div>
														</div>
													</div>
												<?php } ?>

											</div>
										</div>
										<div class="1tovar-box">
											<h3>Эмаль Глухие</h3>
											<div class="wrapper">

												<?php foreach ($fasady_emal_g as $dop3) { ?>
													<div class="tovar-box1 thumbnails10">
														<div class="tovar-box1-border">
															<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"> <img src="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>"></a>
															<div class="price"><?php echo $dop3['name']; ?></div>
															<div class="description"><?php echo $dop3['description']; ?></div>
														</div>
													</div>
												<?php } ?>

											</div>
										</div>

									</div>
								</div>

								<div id="tabs2-2">
									<div class="1tovar-top1">
										<div class="1tovar-box">
											<div class="wrapper">

												<?php foreach ($fasady_plastik as $dop3) { ?>
													<div class="tovar-box1 thumbnails11">
														<div class="tovar-box1-border">
															<a class="href" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>"></a>
															<div class="price"><?php echo $dop3['name']; ?></div>
															<div class="description"><?php echo $dop3['description']; ?></div>
														</div>
													</div>
												<?php } ?>

											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div id="modal-stol" class="modal" style="display:none">
				<div class="modal-dialog" style="width:90%;">
					<div class="modal-content">
						<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h3 class="modal-title">Столешницы</h3>
						</div>
						<div class="modal-body">
							<div id="tabs2" class="tabs">
								<div id="tabs2-0">
									<div class="1tovar-top1">
										<div class="1tovar-box">
											<div class="wrapper">

												<?php foreach ($stol as $dop3) { ?>
													<div class="tovar-box1 thumbnails12">
														<div class="tovar-box1-border">
															<a class="" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>"><img src="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>"></a>
															<div class="price"><?php echo $dop3['name']; ?></div>
															<div class="description"><?php echo $dop3['description']; ?></div>
														</div>
													</div>
												<?php } ?>

											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

			<form id="pred_zakaz" class="container_form">
				<div class="form_wrapper">
					<div class="form_close btn">
						<svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path>
							<path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path>
						</svg>
					</div>
					<div class="form_left"></div>
					<div class="form_right">
						<div class="form">
							<input type="hidden" name="titleforma" value="Предзаказ - <?php echo $heading_title; ?> (<?= $model; ?>)" />
							<input type="hidden" name="model" value="<?= $model; ?>" />
							<input type="hidden" name="title" value="<?= $heading_title; ?>" />
							<h3>Предварительный заказ</h3>
							<div class="bl5_row">
								<div class="price">' + dop1_price + '</div>
							</div>
							<div class="bl5_row"><input type="text" name="name" required="" placeholder="Ваше имя"></div>
							<div class="bl5_row radio_wrapper">
								<div class="radio_el">
									<input type="radio" id="rad121" name="callto" checked="" value="Перезвонить">
									<label for="rad121" onclick="to_tel(this);">Перезвонить</label>
								</div>
								<div class="radio_el">
									<input type="radio" id="rad221" name="callto" value="Написать на почту">
									<label for="rad221" onclick="to_email(this);">Написать на почту</label>
								</div>
							</div>

							<div class="bl5_row">
								<input type="tel" name="tel" class="to_tel" required="" placeholder="Телефон" maxlength="16">
								<input type="email" name="email" class="to_email" placeholder="E-mail" maxlength="16" style="display:none">
							</div>
							<div class="bl5_row">
								<textarea name="comment" required="" placeholder="Комментарий или вопрос"></textarea>
							</div>
							<div class="bl5_row">
								<input type="submit" value="Отправить заявку на заказ" class="btn send button">
							</div>
							<div class="help2">Нажимая кнопку «Оставить заявку», я принимаю условия Пользовательского соглашения и даю своё согласие на обработку своей персональной информации на условиях, определенных Политикой в отношении обработки персональных данных.</div>
						</div>
					</div>

				</div>

			</form>


			<? if (false) { ?>
				<div id="modal-access" class="modal" style="display:none">
					<div class="modal-dialog" style="width:90%;">
						<div class="modal-content">
							<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
								<h3 class="modal-title">Аксессуары</h3>
							</div>
							<div class="modal-body">
								<div id="tabs2" class="tabs">

									<div id="tabs2-0">
										<div class="1tovar-top1">
											<div class="1tovar-box">
												<div class="wrapper">

													<?php foreach ($access as $dop3) { ?>
														<div class="tovar-box1 thumbnails13">
															<div class="tovar-box1-border">
																<a class="" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>" href="<?php echo MAIN_HTTPS_SERVER . 'image/' . $dop3['popup']; ?>">
																	<img src="<?= $placeholder; ?>" data-original="<?php echo $dop3['thumb']; ?>" alt="<?php echo $dop3['name']; ?>" title="<?php echo $dop3['name']; ?>">
																</a>
																<div class="price"><?php echo $dop3['name']; ?></div>
																<div class="description"><?php echo $dop3['description']; ?></div>
															</div>
														</div>
													<?php } ?>

												</div>
											</div>
										</div>
									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
			<? } ?>
			<link href="/catalog/view/theme/default/stylesheet/colors_ral.css?1" type="text/css" rel="stylesheet" media="screen" />
			<div id="modal-colors" class="container_form">
				<div class="form_wrapper">
					<div class="modal-content">
						<div class="form_close btn">
							<svg width="10" height="10" viewBox="0 0 10 10" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M1 1L9 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path>
								<path d="M9 1L1 9" stroke="#18C792" stroke-width="2" stroke-linecap="round"></path>
							</svg>
						</div>

						<div class="modal-body">
							<div id="tabs2" class="tabs">

								<div id="tabs2-0">
									<div class="1tovar-top1">
										<div class="1tovar-box">
											<div class="wrapper">
												<div id="tab_fasad" class="tabss tableft">
													<?php foreach ($fasag_png as $key => $fasag_p) { ?>
														<style>
															#tabss<?= $key; ?>:checked~#contentt<?= $key; ?> {
																display: block;
															}
														</style>
														<input id="tabss<?= $key; ?>" type="radio" name="tabsss" <? if ($key == 0) { ?>checked<? } ?>>
														<label for="tabss<?= $key; ?>" title="<?= $fasag_p['name']; ?>" key="<?= $key; ?>"><?= $fasag_p['name'] ?></label>
													<?php } ?>

													<?php foreach ($fasag_png as $key => $fasag_p) { ?>

														<section id="contentt<?= $key; ?>">
															<div class="bg">

																<div class="bg1"><img src="<?= $fasag_p['bg']; ?>" /></div>
																<div class="c_replace bg2" style="background:rgba(255,255,51,0.57);">
																	<img src="https://www.aldas.ru/images/fasady_png/<?= $key; ?>/yellow.png" class="color_png bg2" />
																</div>
																<div class="clear"></div>
															</div>
														</section>
													<?php } ?>
												</div>

												<div id="tab_ral" class="tabss">

													<?php foreach ($colors_tabs as $key => $color) { ?>
														<style>
															#tab<?= $key; ?>:checked~#content<?= $key; ?> {
																display: block;
															}
														</style>
														<input id="tab<?= $key; ?>" type="radio" name="tabs" <? if ($key == 1) { ?>checked<? } ?>>
														<label for="tab<?= $key; ?>" title="<?= $color['name_ton_ru']; ?>" color="<?= $color['name_ton_en'] ?>" key="<?= $key; ?>" bg="background:rgba(<?= $color['bgrbg'][0]; ?>,<?= $color['bgrbg'][1]; ?>,<?= $color['bgrbg'][2]; ?>,0.57);">
															<div class="dot" style="background:<?= $color['bg']; ?>;"></div>
															<?= $color['name_ton_ru'] ?>
														</label>
													<?php } ?>
													<?php foreach ($colors_tabs as $key1 => $colors) { ?>
														<section id="content<?= $key1; ?>">
															<?php foreach ($colors['colors'] as $key => $color) { ?>
																<div class="col">
																	<div class="color_h" color="<?= $color['name_ton_en'] ?>" colorh="<?= $color['color_h']; ?>" bg="background:rgba(<?= $color['rgba'][0]; ?>,<?= $color['rgba'][1]; ?>,<?= $color['rgba'][2]; ?>,0.57);">
																		<div class="dot" style="background:<?= $color['color_h']; ?>;color:<?= $color['color']; ?>"></div>
																		<div class="name_color"><?= $color['name_rall']; ?><span> - <?= $color['name_ru']; ?></span></div>
																	</div>

																</div>

															<?php } ?>

														</section>
													<?php } ?>
												</div>


											</div>
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>

			<script>
				var price = <?= $intprice; ?>;
			</script>
			<?php
			/*вставляем калькулятор*/
			//$calc_tpl = file_get_contents(DIR_APPLICATION.'view/theme/default/template/product/calc.tpl');

			$find = array(
				'{price}',
				'{model}',
				'{heading_title}'
			);

			$replace = array(
				'price' => $price,
				'model'  => $model,
				'heading_title'   => $heading_title
			);
			//$calc_tpl = str_replace($find, $replace, $calc_tpl);
			//echo $calc_tpl;
			?>
			<script>
				document.addEventListener('DOMContentLoaded', function() {
					sc = 0;

					$('#tab_fasad').on('click', 'label', function() {
						sc = $(this).attr('key');

					});

					$('#tab_ral').on('click', 'label', function() {
						//key = $(this).attr('key');
						style = $(this).attr('bg');
						color = $(this).attr('color');
						$('#tab_fasad #contentt' + sc + ' .c_replace').attr('style', style);
						src = 'images/fasady_png/' + sc + '/' + color + '.png';
						$('#tab_fasad #contentt' + sc + ' .color_png').attr('src', src);
					});
					$('#tab_ral').on('click', '.color_h', function() {
						style = $(this).attr('bg');
						color = $(this).attr('color');
						$('#tab_fasad #contentt' + sc + ' .c_replace').attr('style', style);
						src = 'images/fasady_png/' + sc + '/' + color + '.png';
						$('#tab_fasad #contentt' + sc + ' .color_png').attr('src', src);
					});
				});

				document.addEventListener('DOMContentLoaded', function() {

					//$("a[href='#tabs-1']").click();

					$('.thumbnail').magnificPopup({
						type: 'image',
						//delegate: 'a',
						gallery: {
							enabled: true
						}
					});

					$('.thumbnails1').magnificPopup({
						type: 'image',
						delegate: 'a',
						gallery: {
							enabled: true,
							tCounter: '%curr% из %total%'
						}
					});
					$('.thumbnails2').magnificPopup({
						type: 'image',
						delegate: 'a',
						gallery: {
							enabled: true
						}
					});
					$('.thumbnails3').magnificPopup({
						type: 'image',
						delegate: 'a',
						gallery: {
							enabled: true
						}
					});
					$('.thumbnails4').magnificPopup({
						type: 'image',
						delegate: 'a',
						gallery: {
							enabled: true
						}
					});
					$('.thumbnails5').magnificPopup({
						type: 'image',
						delegate: 'a',
						gallery: {
							enabled: true
						}
					});
					$('.thumbnails6').magnificPopup({
						type: 'image',
						delegate: 'a',
						gallery: {
							enabled: true
						}
					});
				});

				document.addEventListener('DOMContentLoaded', function() {
					$.easing.elasout = function(x, t, b, c, d) {
						var s = 0.70158;
						var p = 0;
						var a = c;
						if (t == 0) return b;
						if ((t /= d) == 1) return b + c;
						if (!p) p = d * .3;
						if (a < Math.abs(c)) {
							a = c;
							var s = p / 4;
						} else var s = p / (2 * Math.PI) * Math.asin(c / a);
						return a * Math.pow(2, -10 * t) * Math.sin((t * d - s) * (2 * Math.PI) / p) + c + b;
					};
					$('.ff4').click(function() {
						//$.scrollTo('#access', 1100, {easing:'elasout'})
						$.scrollTo('.dop_products', 3000, {
							easing: 'elasout'
						})
					});
				});

				//-->
			</script>

			<script type="text/javascript">
				/*document.addEventListener('DOMContentLoaded', function() {
          page_stol = 1;
          show = 4;
          var owl = $('#table');
          dataCarosell = owl.owlCarousel({
            items: 4,
            //autoPlay: 3000,
            navigation: true,
            //navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
            navigationText: ['', ''],
            pagination: false,
            lazyLoad: true,
            transitionStyle: true,
            afterMove: function() {
              //console.log('itemsAmount-'+this.itemsAmount);
              //console.log('currentItem-'+this.currentItem);
              if (this.currentItem + 6 >= this.itemsAmount) {
                //console.log('load');
                i = this.currentItem;
                page_stol = page_stol + 1;
                $.ajax({
                  url: 'index.php?route=product/product/getstol',
                  type: 'POST',
                  data: {
                    page: page_stol,
                    json: 'json',
                    sort: 'RAND()',
                    category_id: '134'
                  },
                  success: function(html) {
                    dataCarosell.data('owlCarousel').addItem(html);
                    dataCarosell.data('owlCarousel').jumpTo(i);
                  },
                  error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                  }
                });
              }
            },
            afterAction: function(el) {}
          });

          page_tehnika = 1;
          show2 = 4;
          var owl2 = $('#tehnika');
          dataCarosell2 = owl2.owlCarousel({
            items: 4,
            //autoPlay: 3000,
            navigation: true,
            //navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
            navigationText: ['', ''],
            pagination: false,
            lazyLoad: true,
            transitionStyle: true,
            afterMove: function() {
              if (this.currentItem + 6 >= this.itemsAmount) {
                i = this.currentItem;
                page_tehnika = page_tehnika + 1;
                //135,'p.sort_order'
                $.ajax({
                  url: 'index.php?route=product/product/getstol',
                  type: 'POST',
                  data: {
                    page: page_tehnika,
                    json: 'json',
                    sort: 'p.sort_order',
                    category_id: '135'
                  },
                  success: function(html) {

                    dataCarosell2.data('owlCarousel').addItem(html);
                    dataCarosell2.data('owlCarousel').jumpTo(i);
                  },
                  error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                  }
                });
              }
            },
            afterAction: function(el) {

            }
          });


          $('.modal').on('shown.bs.modal', function() {
            console.log('555');
            lazy.update();
          });
        });*/
			</script>



			<script>
				document.addEventListener('DOMContentLoaded', function() {
					var swiper = new Swiper(".mainSwiper", {
						pagination: {
							el: ".swiper-pagination",
							clickable: true,
						},
						navigation: {
							nextEl: ".button-next",
							prevEl: ".button-prev",
						},
					});

					var swiper = new Swiper(".swiper_free", {
						slidesPerView: "auto",
						spaceBetween: 0,
						pagination: {
							el: ".swiper-pagination",
							clickable: true,
						},
					});
					var swiper = new Swiper(".mySwiper", {
						slidesPerView: "auto",
						spaceBetween: 30,
						pagination: {
							el: ".swiper-pagination",
							clickable: true,
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

					var swiper = new Swiper(".swiperFasad", {
						slidesPerView: 8,
						grid: {
							rows: 2,
						},
						spaceBetween: 10,
						pagination: {
							el: ".swiper-pagination",
							clickable: true,
						},
						navigation: {
							nextEl: ".button-next",
							prevEl: ".button-prev",
						},
					});

					var swiper = new Swiper(".mebel1", {
						paginationClickable: true,
						slidesPerView: 2,
						spaceBetween: 24,
						breakpoints: {
							/*'480': {
							slidesPerView: 4,
							spaceBetween: 40,},*/
							'1000': {
								slidesPerView: 3,
								spaceBetween: 30,
							},
						},
						pagination: {
							el: ".swiper-pagination",
							clickable: true,
						},
						navigation: {
							nextEl: ".button-next",
							prevEl: ".button-prev",
						},
					});

					//$(function() {
					$('.tab_buttons a').on('click', function() {
						$(window).scrollTop($(window).scrollTop() + 1);
						$(window).scrollTop($(window).scrollTop() - 1);
					});
					//});
				});
			</script>
			<?php echo $footer; ?>