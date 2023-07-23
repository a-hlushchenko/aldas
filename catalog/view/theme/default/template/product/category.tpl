<?php echo $header; ?>

<?php //echo $content_top; 
?>
<?php //echo $column_left; 
?>
<div class="container breadcrums-container">
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
</div>
<div class="container">
	<h1 class="before_green"><?php echo $heading_title; ?></h1>
	<?php //if ($description) { 
	?>
	<?php echo $description; ?>
	<?php //} 
	?>
</div>
<div class="alert">
	<div class="container">Каждую модель можно заказать по индивидуальным размерам в любом формате, цвете и комплектации</div>
</div>

<div class="bl_filter">
	<div class="container filter_wrapper">
		<div class="filter">
			<select name="type" class="nice-select" placeholder="Формат">
				<option value="1">Белые</option>
				<option value="2">Серые</option>
				<option value="3">Черно-белые</option>
				<option value="4">Чёрные</option>
				<option value="5">Фиолетовые</option>
			</select>
		</div>
		<div class="filter">
			<select name="type" class="nice-select" placeholder="Стиль">
				<option value="1">Белые</option>
				<option value="2">Серые</option>
				<option value="3">Черно-белые</option>
				<option value="4">Чёрные</option>
				<option value="5">Фиолетовые</option>
			</select>
		</div>
		<div class="filter">
			<select name="type" class="nice-select" placeholder="Материал">
				<option value="1">Белые</option>
				<option value="2">Серые</option>
				<option value="3">Черно-белые</option>
				<option value="4">Чёрные</option>
				<option value="5">Фиолетовые</option>
			</select>
		</div>
		<div class="filter">
			<select name="type" class="nice-select" placeholder="Размер">
				<option value="1">Белые</option>
				<option value="2">Серые</option>
				<option value="3">Черно-белые</option>
				<option value="4">Чёрные</option>
				<option value="5">Фиолетовые</option>
			</select>
		</div>
		<div class="filter">
			<select name="type" class="nice-select" placeholder="Стоимость">
				<option value="1">Белые</option>
				<option value="2">Серые</option>
				<option value="3">Черно-белые</option>
				<option value="4">Чёрные</option>
				<option value="5">Фиолетовые</option>
			</select>
		</div>
		<div class="filter">
			<select name="type" class="nice-select" placeholder="Цвет">
				<option value="1">Белые</option>
				<option value="2">Серые</option>
				<option value="3">Черно-белые</option>
				<option value="4">Чёрные</option>
				<option value="5">Фиолетовые</option>
			</select>
		</div>
	</div>
</div>


<div class="container">
	<div class="row_sort">
		<div class="count_products"><span>Товаров:</span> <?= $product_total; ?></div>
		<div class="sort">
			<span>Сортировать по:</span>
			<?php foreach ($sorts as $sorts) { ?>
				<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
					<a href="<?php echo $sorts['href']; ?>" class="selected"><?php echo $sorts['text']; ?></a>
				<?php } else { ?>
					<a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a>
				<?php } ?>
			<?php } ?>
		</div>
	</div>

	<?php if ($products) { ?>
		<div class="row_products products">
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
						<div class="param"><span>Цена проекта от:</span> <span class="price"><span class="new_price"><?php echo $product['price_got_new']; ?> </span><span class="ald_price"><?php echo $product['price_got_old']; ?></span></span></div>
					<?php } ?>
				</div>
			<?php } ?>

		</div>

		<?php echo $pagination; ?>

	<?php } ?>

	<div class="short_description"><?php echo $short_description; ?></div>

</div>

<?php echo $content_bottom; ?>

<?php echo $news; ?>

<?php echo $footer; ?>