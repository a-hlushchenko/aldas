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

	.about-images img {
		float: left;
		margin: 0.3%;
	}

	.about-images .im1 {
		width: 35.3%
	}

	.about-images .im2 {
		width: 16.2%
	}

	.about-images .im3 {
		width: 22.5%
	}

	.about-images .im4 {
		width: 22.5%
	}

	.n_price span {
		font-size: 18px;
		font-weight: bold;
		display: block;
		padding-top: 20px;
	}

	.n_price>div {
		position: relative;
	}

	.fa-minus {
		position: absolute;
		top: 29px;
		left: -15px;
	}

	.fa-minus.cl1 {
		top: 27px;
	}

	.fa-minus.cl2 {
		top: 31px;
	}

	.img1 {
		margin-top: 4px;
	}

	.img2 {
		margin-top: 5px;
	}

	.img4 {
		margin-top: 19px;
	}

	#content {
		color: #000;
	}

	.priem span {
		display: block;
		margin: 15px 0;
		font-size: 22px;
		font-weight: bold;
	}

	.priem a {
		color: #e84c3d;
		font-size: 16px;
		text-decoration: underline;
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
		color: #222;
		font-size: 36px;
		margin-bottom: 40px;
	}

	h2 {
		color: #222;
		font-size: 32px;
		margin-bottom: 40px;
	}

	.about,
	.price {
		display: flex;
		margin-bottom: 80px;
		gap: 48px;
		align-items: center;
		justify-content: center;
	}

	.price {
		margin-bottom: 0;
	}

	.about-content,
	.price-content {
		display: flex;
		flex-direction: column;
		max-width: 370px;
		gap: 20px;
	}

	.about-content p,
	.price p {
		font-size: 15px;
	}

	iframe,
	.price img {
		max-width: 810px;
	}

	/* .photo {
	margin-bottom: 80px;
	display: flex;
	flex-wrap: wrap;
	gap: 24px;
	justify-content: center;
}*/
	.photo img {
		width: 273px;
		height: 200px;
	}

	.price h2 {
		margin: 0;
	}

	.price-container {
		background-color: #F7F7F7;
		border-radius: 8px;
		padding: 24px;
		display: flex;
		flex-direction: column;
		gap: 48px;
		margin-bottom: 80px;
	}

	.price-blocks {
		display: flex;
		gap: 16px;
		flex-wrap: wrap;
		justify-content: center;
	}

	.price-block {
		padding: 24px;
		background-color: #fff;
		border-radius: 8px;
		display: flex;
		flex-direction: column;
		gap: 48px;
	}

	.price-block>div {
		font-size: 20px;
		font-weight: 500;
	}

	.price-block>img {
		width: 80px;
		height: 80px;
	}

	.price-block-container {
		display: flex;
		gap: 16px;
	}

	.price-block-container>img {
		height: 28px;
		width: 28px;
		align-self: center;
	}

	.price img {
		width: 100%;
	}

	.advant {
		display: grid;
		gap: 16px;
		grid-template-columns: 1fr 1fr 1fr;
		margin-bottom: 30px;
	}

	.advant-item {
		background-color: #F7F7F7;
		border-radius: 8px;
		padding: 24px;
		display: flex;
		flex-direction: column;
		gap: 48px;
	}

	.advant-item img {
		width: 80px;
		height: 80px;
	}

	.advant-content {
		display: flex;
		flex-direction: column;
		gap: 12px;
	}

	.advant-item span {
		font-size: 20px;
		font-weight: 500;
	}

	.advant-item a {
		font-size: 15px;
		font-weight: 500;
		color: #18C792;
		width: fit-content;
		transition: 0.3s color;
	}

	.advant-item a:hover {
		color: #13B081;
	}

	.price-content {
		padding: 24px 0 0 24px;
	}

	.price>img {
		max-width: 750px;
	}

	.price-container {
		margin-top: 80px;
	}

	@media (max-width: 1280px) {
		iframe {
			max-width: 740px;
		}

		.price img {
			max-width: 640px;
		}

		.price-blocks {
			justify-content: start;
		}

		.advant {
			margin-bottom: 80px;
		}
	}

	@media (max-width: 1220px) {
		.photo {
			justify-content: start;
		}
	}

	@media (max-width: 1200px) {
		iframe {
			max-width: 680px;
			max-height: 400px;
		}
	}

	@media (max-width: 1100px) {
		iframe {
			max-width: 640px;
			max-height: 380px;
		}

		.price img {
			max-width: 540px;
		}

		.about {
			gap: 24px;
		}
	}

	@media (max-width: 1040px) {
		iframe {
			max-width: 600px;
			max-height: 340px;
		}
	}

	@media (max-width: 1010px) {
		.price-blocks {
			justify-content: center;
		}
	}

	@media (max-width: 1000px) {
		.about {
			flex-direction: column;
		}

		iframe {
			max-width: 800px;
			max-height: none;
		}

		.about-content {
			max-width: 600px;
		}

		.about {
			gap: 48px;
		}

		.price {
			flex-direction: column;
		}

		.price-content {
			padding: 0;
			max-width: none;
		}
	}

	@media (max-width: 924px) {
		.photo {
			justify-content: center;
		}
	}

	@media (max-width: 840px) {
		iframe {
			max-width: 600px;
			max-height: 400px;
		}
	}

	@media (max-width: 740px) {
		.advant {
			display: flex;
			flex-direction: column;
		}
	}

	@media (max-width: 690px) {
		.price-blocks {
			flex-direction: column;
			align-items: start;
		}
	}

	@media (max-width: 640px) {
		iframe {
			max-width: 400px;
			max-height: 300px;
		}
	}

	@media (max-width: 480px) {
		iframe {
			max-width: 300px;
			max-height: 240px;
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


		<div class="">
			<h1>О НАС</h1>
		</div>


		<div class="about">
			<div class="about-content">
				<p>«Мебель Альдас» – компания, специализирующаяся на производстве мебели на заказ, по индивидуальным проектам.</p>
				<p>Мы изготовим мебель любого размера, от компактного встроенного варианта, который легко поместится на небольшой площади, до обустройства мебели в огромном особняке. Всем нашим клиентам мы предлагаем комплекс услуг, включающие в себя замер помещения, расчет по эскизу, консультацию дизайнера, выполнение 3D макета.</p>
			</div>
			<div class="video"><iframe allowfullscreen="" frameborder="0" height="480" src="https://www.youtube.com/embed/VxnmkgdCgis?rel=0&amp;vq=hd720" width="853"></iframe></div>

		</div>

		<div class="">
			<h2>Фото с производства</h2>
		</div>

		<div class="swiper">
			<div id="photo" class="photo">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="images/n_aldas/about-1.jpg">
					</div>
					<div class="swiper-slide">
						<img src="images/n_aldas/about-2.jpg">
					</div>
					<div class="swiper-slide">
						<img src="images/n_aldas/about-3.jpg">
					</div>
					<div class="swiper-slide">
						<img src="images/n_aldas/about-4.jpg">
					</div>
				</div>
				<div class="button-next"></div>
				<div class="button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
		</div>

		<div class="price-container">
			<div class="price">
				<div class="price-content">
					<h2>Лучшие цены</h2>
					<p>Мы не стремимся открывать множество салонов, так как это в значительной степени сказывается на себестоимости мебели.</p>
					<p>Использование современных технологий вкупе с жесткой оптимизацией всех этапов работы и высокий профессионализм наших сотрудников позволяют нам избегать излишних затрат, как финансовых, так и временных, поэтому мы предлагаем наши гарнитуры по весьма и весьма приятным ценам.</p>
				</div>
				<img src="/image/price.png" alt="img">
			</div>
			<div class="price-blocks">
				<div class="price-block-container">
					<div class="price-block">
						<img src="/image/svg/price1.svg" alt="img">
						<div>Меньше салонов</div>
					</div>
					<img src="/image/svg/price-plus.svg" alt="+">
				</div>
				<div class="price-block-container">
					<div class="price-block">
						<img src="/image/svg/price2.svg" alt="img">
						<div>Меньше персонала<br> в салонах</div>
					</div>
					<img src="/image/svg/price-plus.svg" alt="+">
				</div>
				<div class="price-block-container">
					<div class="price-block">
						<img src="/image/svg/price3.svg" alt="img">
						<div>Интернет технологии</div>
					</div>
					<img src="/image/svg/price-arrow.svg" alt="=">
				</div>
				<div class="price-block">
					<img src="/image/svg/price4.svg" alt="img">
					<div>Минимальная цена!</div>
				</div>
			</div>
		</div>

		<div class="advant">

			<div class="advant-item">
				<img src="/image/svg/advant1.svg">
				<span>Гарантия 5 лет</span>
			</div>

			<div class="advant-item">
				<img src="/image/svg/advant2.svg">
				<div class="advant-content">
					<span>Индивидуальный 3D дизайн</span>
					<a href="dizain-kyhni/" title="Индивидуальный 3D дизайн">Подробнее</a>
				</div>
			</div>

			<div class="advant-item">
				<img src="/image/svg/advant3.svg">
				<div class="advant-content">
					<span>Рассрочка 0% до 12 месяцев</span>
					<a href="kuhni-v-rassrochku/" title="Рассрочка 0% до 12 месяцев">Подробнее</a>
				</div>
			</div>
		</div>

	</div>
</div>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var swiper = new Swiper("#photo", {
			paginationClickable: true,
			slidesPerView: 1,
			spaceBetween: 20,

			pagination: {
				el: ".swiper-pagination",
				clickable: true,
			},
			navigation: {
				nextEl: ".button-next",
				prevEl: ".button-prev",
			},

			breakpoints: {
				'480': {
					slidesPerView: 2,
					spaceBetween: 20,
				},
				'768': {
					slidesPerView: 3,
					spaceBetween: 20,
				},
				'1000': {
					slidesPerView: 4,
					spaceBetween: 20,
				},
			},
		});
	});
</script>

<?php echo $footer; ?>