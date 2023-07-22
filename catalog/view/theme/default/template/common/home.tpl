<?php echo $header; ?>

<?php //echo $content_top; 
?>

<style>
	/*------------*/
	.sliders {
		display: flex;
		justify-content: space-between;
	}

	.mainSwiper {
		width: 912px;
		height: 100%;
		margin: 0;
		max-width: 100%;
	}

	.mainSwiper .swiper-slide {
		border-radius: 8px;
		overflow: hidden;
	}

	.mainSwiper img {
		border-radius: 8px;
	}

	.mainSwiper .swiper-slide:hover img {
		-webkit-transform: scale(1.035);
		-moz-transform: scale(1.035);
		-o-transform: scale(1.035);
		-ms-transform: scale(1.035);
		transform: scale(1.035);
	}

	.mainSwiper2 {
		width: 248px;
		padding-bottom: 7px;
		margin: 0;
	}

	.swiper-slide {
		text-align: left;
		font-size: 16px;
		background: #fff;
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
		position: relative
	}

	.swiper-slide img {
		display: block;
		width: 100%;
		height: 100%;
		object-fit: cover;
		transition: 1s;
	}

	.swiper.mainSwiper2 .button-next {
		right: 0;
	}

	.swiper.mainSwiper2 .button-prev {
		left: 0;
	}

	.sl_right {
		padding-top: 20px;
		padding-left: 20px;
		margin-bottom: 30px;
		margin-left: 24px
	}

	.mainSwiper2 .swiper-slide {
		background: none;
		position: relative;
		flex-direction: column;
	}

	.mainSwiper2 .swiper-slide .image {
		position: relative;
		margin-bottom: 45px
	}

	.mainSwiper2 .swiper-slide img {
		position: relative;
	}

	.mainSwiper2 .swiper-slide .image:before {
		position: absolute;
		content: '';
		background: #EFEFEF;
		width: 85%;
		height: 85%;
		top: 7.5%;
		left: 7.5%
	}

	.mainSwiper2 .s_title {
		font-weight: 700;
		font-size: 18px;
		line-height: 24px;
		margin-bottom: 8px;
	}

	.mainSwiper2 .s_help {
		font-size: 13px;
		line-height: 18px;
		color: #878585;
		margin-bottom: 38px;
	}

	.mainSwiper2 .s_more img {
		width: 20px;
		display: inline-block;
	}

	.mainSwiper2 .s_more {
		width: 100%;
		display: block;
		font-weight: 700;
		font-size: 15px;
		line-height: 22px;
		color: #18C792;
	}

	.mainSwiper2 .swiper-pagination {
		bottom: 0;
		text-align: center;
		display: none;
		position: relative;
		box-sizing: border-box;
	}

	.mainSwiper2 .swiper-pagination-bullet-active {
		background: #13B081;
	}

	.sliders .name {
		position: absolute;
		font-weight: 700;
		font-size: 88px;
		line-height: 84px;
		text-align: center;
		color: #FFF;
		text-shadow: 0 4px 60px rgba(0, 0, 0, 0.3);
		top: 56px
	}

	.sliders .text {
		position: absolute;
		background: linear-gradient(180deg, rgba(114, 114, 114, 0.12) 0.01%, rgba(114, 114, 114, 0.16) 100%);
		backdrop-filter: blur(5px);
		border-radius: 8px;
		padding: 24px 32px 28px;
		font-weight: 700;
		font-size: 18px;
		line-height: 24px;
		color: #FFF;
		width: 267px;
		box-sizing: border-box;
		text-align: left;
		bottom: 20px;
		right: 20px
	}

	.sliders .text a {
		display: inline-block;
		color: #FFF;
		padding-top: 12px
	}

	.sliders .text a img {
		width: 20px;
		height: 9px;
		display: inline-block;
		transition: .3s;
		margin-left: 5px
	}

	.sliders .text a:hover img {
		width: 23px;
		height: 9px
	}

	.bl1 {
		padding-top: 80px;
		margin-bottom: 80px;
	}

	.bl1 .h1 {
		align-items: center;
	}

	.bl1 h1 {
		flex: 1;
		margin: 0
	}

	.bl1 .steps {
		gap: 12px;
		flex-wrap: wrap;
		padding-top: 29px
	}

	.bl1 .step {
		background: #F7F7F7;
		border-radius: 4px;
		display: flex;
		z-index: 5;
		position: relative;
		overflow: hidden
	}

	.bl1 .steps .number {
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

	.bl1 .steps .number:before {
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

	.bl1 .step:after {
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

	.bl1 .steps .text {
		font-weight: 400;
		font-size: 15px;
		line-height: 22px
	}

	.bl1 .step {
		padding: 28px 28px 12px;
		box-sizing: border-box
	}

	.bl1 .st1,
	.bl1 .st2,
	.bl1 .st3 {
		flex-basis: calc(33.3% - (12px * 2)/3)
	}

	.bl1 .st4,
	.bl1 .st5 {
		flex-basis: calc(50% - (12px * 1)/2)
	}

	@media (max-width: 880px) {
		.bl1 {
			padding-top: 64px;
			margin-bottom: 64px
		}
	}

	@media (max-width: 660px) {
		.bl1 {
			padding-top: 48px;
			margin-bottom: 48px
		}

		.bl1 .steps {
			flex-direction: column
		}

		.bl1 .step {
			align-items: center
		}
	}

	@media (max-width: 480px) {
		.bl1 {
			padding-top: 40px;
			margin-bottom: 40px
		}

		.bl1 .h1 {
			flex-direction: column;
			gap: 8px
		}

		.bl1 .h1>* {
			width: 100%
		}
	}


	.bl2 {
		margin-bottom: 80px;
	}

	.bl2_wrapper {
		padding: 20px;
		overflow: hidden;
		position: relative;
		justify-content: space-between;
		background: #F7F7F7;
		border-radius: 8px;
		padding: 48px 48px 40px
	}

	.bl2_wrapper:after {
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

	.bl2 img.bl2_bg {
		position: absolute;
		left: 50%;
		transform: translateX(-50%);
		bottom: 0
	}

	.bl2 .bl2_man {
		position: absolute;
		left: 50%;
		transform: translateX(-50%);
		bottom: 0;
		z-index: 2
	}

	.bl2 .bl2_bg_man {
		position: relative;
	}

	.bl2_l,
	.bl2_r {
		max-width: 445px;
		position: relative;
		flex: 1;
	}

	.bl2_title {
		font-weight: 500;
		font-size: 28px;
		line-height: 34px;
		margin-bottom: 24px;
		padding-right: 5px
	}

	.bl2_item_error,
	.bl2_item_success {
		display: flex;
		align-items: center;
		margin-bottom: 8px;
		background: #FFF;
		border-radius: 4px;
		padding: 16px 20px
	}

	.bl2_item_error {
		z-index: 1
	}

	.bl2_item_success {
		z-index: 3;
		position: relative
	}

	.bl2_item_error img,
	.bl2_item_success img {
		margin-right: 16px
	}

	.bl2_item_error span,
	.bl2_item_success span {
		flex: 1;
		font-size: 15px;
		line-height: 22px
	}

	.bl4 .swiper .button-next,.bl4 .swiper .button-prev {
		top: 35%;
	}

	@media (max-width: 1090px) {
		.bl2_wrapper {
			gap: 72px;
			padding: 24px
		}
	}

	@media (max-width: 660px) {
		.bl2 {
			margin-bottom: 64px
		}

		.bl2_wrapper {
			flex-direction: column;
			gap: 32px
		}

		.bl2 .bl2_man {
			position: relative;
			order: 3;
			margin-bottom: -207px
		}

		.bl2_wrapper {
			padding-bottom: 0
		}
	}

	@media (max-width: 480px) {
		.bl2 {
			margin-bottom: 40px
		}
	}

	.bl3 {
		margin-bottom: 80px
	}

	.bl3 h2 {
		margin-bottom: 31px
	}

	.bl3_wrapper {
		gap: 24px
	}

	.bl3_wrapper img {
		display: block;
		margin-bottom: 48px
	}

	.bl3_item {
		background: #F7F7F7;
		border-radius: 8px;
		padding: 36px 24px 28px;
		flex-basis: calc(33.3% - (12px * 2)/3)
	}

	.bl3_title {
		font-weight: 700;
		font-size: 22px;
		line-height: 28px;
		margin-bottom: 16px
	}

	.bl3_item_el {
		padding-left: 17px;
		position: relative;
		font-size: 15px;
		line-height: 22px
	}

	.bl3_item_el:before {
		position: absolute;
		content: '';
		left: 0;
		top: 50%;
		transform: translateY(-50%);
		width: 6px;
		height: 6px;
		background: #FFE200;
		border-radius: 1px
	}

	.bl3_item_el+.bl3_item_el {
		margin-top: 12px
	}

	@media (max-width: 880px) {
		.bl3 {
			margin-bottom: 64px
		}

		.bl3 h2 {
			margin-bottom: 24px
		}

		.bl3_wrapper {
			flex-direction: column;
			gap: 8px
		}

		.bl3_item {
			display: flex;
			gap: 48px;
			padding: 24px
		}
	}

	@media (max-width: 660px) {
		.bl3 {
			margin-bottom: 48px
		}

		.bl3_item {
			gap: 24px
		}

		.bl3_wrapper img {
			margin-bottom: 0
		}
	}

	@media (max-width: 480px) {
		.bl3 {
			margin-bottom: 40px
		}

		.bl3_item {
			display: flex;
			flex-direction: column;
			gap: 16px;
			padding: 16px
		}
	}

	.bl6 {
		background: #18C792;
		padding: 40px 0;
		font-size: 28px;
		line-height: 34px;
		margin-bottom: 63px;
		color: #fff
	}

	@media (max-width: 880px) {
		.bl6 {
			margin-bottom: 64px
		}
	}

	@media (max-width: 880px) {
		.bl6 {
			margin-bottom: 64px
		}
	}

	@media (max-width: 660px) {
		.bl6 {
			margin-bottom: 48px;
			padding: 20px 0;
			font-size: 21px;
			line-height: 28px;
		}
	}

	@media (max-width: 480px) {
		.bl6 {
			margin-bottom: 40px
		}
	}

	.bl8 {
		background: #F7F7F7;
		padding: 85px 0 80px;
		margin-bottom: 80px
	}

	.bl8 thead {
		display: none
	}

	.bl8 table.dataTable {
		border-spacing: 8px 0
	}

	.bl8 table.dataTable tbody td {
		width: 194px;
		padding: 4px;
		border-top: none;
		padding: 16px 20px
	}

	.bl8 table.dataTable.row-border tbody td {
		border-top: none;
		background: #FFF
	}

	.bl8 .dataTables_wrapper {
		margin: 0 auto;
		width: auto !important
	}

	.bl8 table.dataTable tbody tr>.dtfc-fixed-left {
		background: none
	}

	.bl8 table.dataTable.stripe>tbody>tr.odd>* {
		box-shadow: none
	}

	.bl8 table.dataTable.order-column.stripe>tbody>tr.even>.sorting_1,
	.bl8 table.dataTable.order-column.stripe>tbody>tr.odd>.sorting_1 {
		box-shadow: none;
		font-weight: 700;
		font-size: 15px;
		line-height: 22px;
		padding-left: 0;
		background: #F7F7F7;
	}

	.bl8 table .name {
		width: 105px
	}

	.bl8 table.dataTable.row-border tbody .image td {
		background: none;
		position: relative;
		padding: 0 0 8px
	}

	.bl8 table td .title {
		text-align: center;
		font-size: 20px;
		line-height: 26px;
		color: #FFF;
		display: block;
		margin-top: -39px;
		position: absolute;
		width: 100%
	}

	.bl8 table .row1 td {
		border-radius: 8px 8px 0 0
	}

	.bl8 table.dataTable.row-border tbody tr+tr td {
		border-top: 1px solid #F7F7F7
	}

	.bl8 table.dataTable tbody tr:last-child td {
		border-radius: 0 0 8px 8px
	}

	.bl8 .dataTables_wrapper.no-footer .dataTables_scrollBody {
		border: none
	}

	.bl8 .dataTables_info,
	.bl8 .dataTables_filter {
		display: none
	}

	.bl8 h2 {
		width: 193px;
		margin-right: 8px
	}

	.bl8 h2+.btn {
		flex: 1;
		text-align: left;
	}

	.bl8 table.dataTable.order-column.stripe>tbody>tr.odd>.sorting_1 {
		width: 193px;
		min-width: 193px;
		background: #F7F7F7;
		box-sizing: border-box
	}

	.bl8_wrapper img {
		width: 320px;
		width: 100%;
		min-width: 199px;
	}

	@media (max-width:1010px) {
		.bl8 table.dataTable.order-column.stripe>tbody>tr.odd>.sorting_1 {
			width: 140px;
			min-width: 140px;
		}
	}

	@media (max-width: 880px) {
		.bl8 table.dataTable.order-column.stripe>tbody>tr.odd>.sorting_1 {
			width: 105px;
			min-width: 105px;
		}

		.bl8 {
			margin-bottom: 64px;
			padding: 64px 0 64px;
		}

	}

	@media (max-width: 660px) {
		.bl8 {
			margin-bottom: 48px;
			padding: 48px 0 48px;
		}

		.bl8 .h2 {
			flex-direction: column;
		}
	}

	@media (max-width: 480px) {
		.bl8 {
			margin-bottom: 40px;
			padding: 20px 0 20px;
		}
	}

	.swiper-backface-hidden .swiper-slide img {
		width: auto;
	}
</style>

<div class="container container_sl">
	<div class="sliders">
		<div class="swiper mainSwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="images/new/svg/demo/slider1.jpg" alt="">
					<div class="name">Кухня Луиджи</div>
					<div class="text">
						Великолепный кухонный гарнитур в классическом стиле с элементами барокко
						<div>
							<a href="">Подробнее <img src="images/new/svg/arrow_white.svg" alt=""></a>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<img src="images/new/svg/demo/slider1.jpg" alt="">
					<div class="name">Кухня Луиджи</div>
					<div class="text">
						Великолепный кухонный гарнитур в классическом стиле с элементами барокко
						<div>
							<a href="">Подробнее <img src="images/new/svg/arrow_white.svg" alt=""></a>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<img src="images/new/svg/demo/slider1.jpg" alt="">
					<div class="name">Кухня Луиджи</div>
					<div class="text">
						Великолепный кухонный гарнитур в классическом стиле с элементами барокко
						<div>
							<a href="">Подробнее <img src="images/new/svg/arrow_white.svg" alt=""></a>
						</div>
					</div>
				</div>
			</div>
			<div class="button-next"></div>
			<div class="button-prev"></div>
			<div class="swiper-pagination"></div>
		</div>
		<div class="sl_right">
			<div class="swiper mainSwiper2">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="image"><img src="images/new/svg/demo/slider2.png" alt=""></div>
						<div class="s_right">
							<div class="s_title">Посмотри на свою мебель в реальном времени</div>
							<div class="s_help">Мы сделаем для вас бесплатный 3D фотореалистичный дизайн</div>
							<a href="" class="s_more">Подробнее <img src="images/new/svg/arrow_button_light.svg" alt=""></a>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="image"><img src="images/new/svg/demo/slider2.png" alt=""></div>
						<div class="s_right">
							<div class="s_title">Посмотри на свою мебель в реальном времени</div>
							<div class="s_help">Мы сделаем для вас бесплатный 3D фотореалистичный дизайн</div>
							<a href="" class="s_more">Подробнее <img src="images/new/svg/arrow_button_light.svg" alt=""></a>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="image"><img src="images/new/svg/demo/slider2.png" alt=""></div>
						<div class="s_right">
							<div class="s_title">Посмотри на свою мебель в реальном времени</div>
							<div class="s_help">Мы сделаем для вас бесплатный 3D фотореалистичный дизайн</div>
							<a href="" class="s_more">Подробнее <img src="images/new/svg/arrow_button_light.svg" alt=""></a>
						</div>
					</div>

				</div>
				<div class="swiper-pagination"></div>
				<div class="button-next"></div>
				<div class="button-prev"></div>
			</div>
		</div>
	</div>
</div>
<div class="container bl1">
	<div class="h1 dflex">
		<h1 class="before_green">Мебель на заказ от производителя</h1>
		<a href="about/" class="btn arrow">О нас</a>
	</div>
	<div class="steps dflex">
		<div class="step st1">
			<div class="number">1</div>
			<div class="text">Мебельная фабрика «Альдас» специализируется на изготовлении мебели по индивидуальным заказам.</div>
		</div>
		<div class="step st2">
			<div class="number">2</div>
			<div class="text">По желанию, повторим модели из каталога или создадим с нуля по вашему эскизу.</div>
		</div>
		<div class="step st3">
			<div class="number">3</div>
			<div class="text">Поможем и подскажем на всех этапах - от идеи до сборки готовой мебели.</div>
		</div>
		<div class="step st4">
			<div class="number">4</div>
			<div class="text">Мы держим цены на минимальном уровне за счет автоматизи-рованных процессов производства и отсутствия посредников, при этом качество исполнения не уступает изделиям из европейских стран.</div>
		</div>
		<div class="step st5">
			<div class="number">5</div>
			<div class="text">За подробностями и консультацией - звоните, пишите, приезжайте в офис. Или на нашу мебельную фабрику в Москве - расскажем и покажем из чего и как создается мебель.</div>
		</div>
	</div>
</div>

<div class="container bl2">
	<div class="bl2_wrapper dflex">
		<div class="bl2_man">
			<img class="bl2_bg" src="images/new/svg/bl2_bg.svg" alt="bl2_bg">
			<img class="bl2_bg_man" src="images/new/svg/bl2_bg_man.png" alt="bl2_bg_man">
		</div>
		<div class="bl2_l">
			<div class="bl2_title">Некоторые люди считают, что мебель на заказ:</div>
			<div class="bl2_item_error"><img src="images/new/svg/error.svg" alt="Дорого"><span>Дорого</span></div>
			<div class="bl2_item_error"><img src="images/new/svg/error.svg" alt="Долго"><span>Долго</span></div>
			<div class="bl2_item_error"><img src="images/new/svg/error.svg" alt="Сомнительно"><span>Сомнительно</span></div>
		</div>
		<div class="bl2_r">
			<div class="bl2_title">Мы готовы опровергнуть это мнение!</div>
			<div class="bl2_item_success"><img src="images/new/svg/success.svg" alt="Стоимость"><span>Стоимость наших гарнитуров сравнима с аналогичными готовыми изделиями.</span></div>
			<div class="bl2_item_success"><img src="images/new/svg/success.svg" alt="Качество"><span>Качество такой мебели значительно выше, чем у типовых моделей.</span></div>
			<div class="bl2_item_success"><img src="images/new/svg/success.svg" alt="Минимальные сроки"><span>Сроки выполнения заказа минимальные за счет собственного отлаженного производства.</span></div>
			<div class="bl2_item_success"><img src="images/new/svg/success.svg" alt="Большой выбор"><span>Большой выбор стилевых и цветовых решений, с возможностью приобрести кухню от производителя по собственному проекту, позволит вам не ограничиваться в своем желании обладать идеальной кухонной мебелью.</span></div>
		</div>
	</div>
</div>

<div class="container bl3">
	<h2 class="before_green">Наши преимущества</h2>
	<div class="bl3_wrapper dflex">
		<div class="bl3_item">
			<div class="bl3_item_rleft"><img src="images/new/svg/bl3_img_1.svg" alt="Индивидуальность"></div>
			<div class="bl3_item_right">
				<div class="bl3_title">Индивидуальность</div>
				<div class="bl3_item_el">Любые размеры фасадов с точностью до 1мм;</div>
				<div class="bl3_item_el">Большое разнообразие стилей, цветовых решений, столешниц и дополнительных элементов;</div>
				<div class="bl3_item_el">Расчет по вашему эскизу;</div>
				<div class="bl3_item_el">Профессиональная консультация и помощь менеджера.</div>
			</div>
		</div>
		<div class="bl3_item">
			<div class="bl3_item_rleft"><img src="images/new/svg/bl3_img_2.svg" alt="Качество"></div>
			<div class="bl3_item_right">
				<div class="bl3_title">Качество</div>
				<div class="bl3_item_el">Отборные материалы: массив дерева (дуб, ясень, бук), эмаль, пластик, МДФ;</div>
				<div class="bl3_item_el">Лучшие комплектующие: фурнитура Blum (Австрия), итальянский лак;</div>
				<div class="bl3_item_el">Безупречный внешний вид фасадов итальянских и белорусских моделей кухонь;</div>
				<div class="bl3_item_el">Профессиональное производство: итальянские станки и опытные работники, знающие свое дело.</div>
			</div>
		</div>
		<div class="bl3_item">
			<div class="bl3_item_rleft"><img src="images/new/svg/bl3_img_3.svg" alt="Стоимость"></div>
			<div class="bl3_item_right">
				<div class="bl3_title">Стоимость</div>
				<div class="bl3_item_el">Цены наших кухонных гарнитуров ниже, чем у конкурентов;</div>
				<div class="bl3_item_el">Рассрочка без процентов и участия банка;</div>
				<div class="bl3_item_el">Бесплатный вызов замерщика;</div>
				<div class="bl3_item_el">Бесплатная доставка по Москве и московской области;</div>
				<div class="bl3_item_el">Бесплатный 3д дизайн-проект (при заказе кухни).</div>
			</div>
		</div>
	</div>
</div>

<? // module/news_carousel
echo $news;
?>

<?php
//форма - Закажите расчет проекта или вызовите дизайнера-замерщика
include(DIR_TEMPLATE . 'default/template/parts/bl5_form.tpl');
?>

<div class="bl6">
	<div class="container">
		Любая мебель изготавливается на заказ в любом формате, размере, цвете и комплектации
	</div>
</div>

<div class="bl7">
	<div class="sliders2 container">
		<? // слайдери Мебель в классическом стиле/ Мебель в современном стиле
		echo $column_left;
		?>
	</div>
</div>

<div class="bl8">
	<div class="container">
		<div class="h2 dflex">
			<h2 class="before_green">Материал</h2>
			<div class="btn light">Как правильно выбрать, в чем разница и на сколько практичен тот или иной материал?</div>
		</div>
		<div class="bl8_wrapper">
			<table class="stripe row-border order-column" style="width:100%">
				<thead>
					<tr>
						<th>Название</th>
						<th>Массив дерева</th>
						<th>МДФ</th>
						<th>Пластик</th>
					</tr>
				</thead>
				<tbody>
					<tr class="image row0">
						<td class="name">Название</td>
						<td><img src="images/new/svg/bl8_1.jpg" alt="Массив дерева"><span class="title">Массив дерева</span></td>
						<td><img src="images/new/svg/bl8_2.jpg" alt="МДФ"><span class="title">МДФ</span></th>
						<td><img src="images/new/svg/bl8_3.jpg" alt="Пластик"><span class="title">Пластик</span></td>
					</tr>
					<tr class="row1">
						<td>Описание</td>
						<td>Натуральный, природный материал. Уникальные и не повторимые "узоры" текстуры</td>
						<td>Популярный материал благодаря легкости в обработки и экологичности</td>
						<td>Самый современный материал. Сочетание дизайна и практичности</td>
					</tr>
					<tr>
						<td class="name">Тип материала</td>
						<td>Дуб, Ясень, Ольха</td>
						<td>Измельчённое древесное волокно</td>
						<td>Литьевой пластик HPL</td>
					</tr>


					<tr>
						<td class="name">Плюсы</td>
						<td>Максимальная экологичность и высокая плотность материала</td>
						<td>Экологичность, создание уникальных форм, оптимальная стоимость</td>
						<td>Высокая стойкость к воздействию и обилие вариантов дизайна</td>
					</tr>
					<tr>
						<td class="name"><span style="display: none;">С</span>Минусы</td>
						<td>Цена выше относительно других материалов, сложность в уходе</td>
						<td>В зависимости от покрытия средняя стойкость к воздействию</td>
						<td>Не возможность создать 3D моделей в фрезировке</td>
					</tr>

					<tr>
						<td class="name">Сроки</td>
						<td>От 30 рабочих дней</td>
						<td>От 20 рабочих дней</td>
						<td>От 15 рабочих дней</td>
					</tr>

				</tbody>
			</table>
		</div>
		<script>
			document.addEventListener('DOMContentLoaded', function() {
				var table = $('.bl8_wrapper table').DataTable({
					scrollY: false,
					scrollX: true,
					scrollCollapse: true,
					paging: false,
					fixedColumns: {
						left: 1
					}
				});
			});
		</script>
	</div>
</div>

<?php
//Как заказать мебель
include(DIR_TEMPLATE . 'default/template/parts/bl9.tpl');
?>


<?php //echo $content_bottom; 
?>
<?php echo $footer; ?>