<?php if ($categories) {
	//vdump($categories);

?>

	<div id="mobile-menu">
		<ul>
			<li>
				<div class="h_top">
					<div class="logo">
						<img src="images/new/svg/logo.svg" alt="Алдас">
						<div>
							Мебель на заказ<br>от производителя
						</div>
						<div class="search">
							<a href="#search" data-modal="search">
								<svg width="14" height="15" viewBox="0 0 14 15" fill="none" xmlns="http://www.w3.org/2000/svg">
									<circle cx="6.9375" cy="6.5" r="5" stroke="#18C792" stroke-width="2" />
									<path d="M10.5625 11L13.0625 13.5" stroke="#18C792" stroke-width="2" />
								</svg>
							</a>
						</div>
					</div>
					<a href="#call_design" data-modal="call_design" class="call_design btn light">
						Вызвать дизайнера-замерщика
					</a>
					<a href="#consultation" data-modal="consultation" class="consultation btn light">Заказать консультацию</a>

				</div>
			</li>

			<li class="links">
				<a href="#" class="kitchen">Кухни </a>
				<ul>
					<li>
						<a href="/katalog/" class="btn light arrow">Все кухни</a>
					</li>
					<? foreach ($categories as $keyy => $category) { ?>
						<?php if ($category['children']) { ?>
							<?php foreach ($category['children'] as $key => $children) {
								if ($key == '') {
									continue;
								} ?>
								<?php if ($key != 'Цвет') { ?>
									<li class="menu_sub_item">
										<b><?= $key ?></b>
										<ul class="menu_sub_item_block">
											<?php foreach ($children as $key2 => $chil) { ?>
												<li><a href="<?php echo $chil['href']; ?>" title="<?php echo $chil['name']; ?>"><?php echo $chil['name']; ?></a></li>
											<? } ?>
										</ul>
									</li>
								<? } else { ?>
									<li class="color menu_sub_item">
										<b><?= $key ?></b>
										<div class="colors">
											<?php foreach ($children as $child) { ?>
												<a href="<?php echo $child['href']; ?>" title="<?php echo $child['name']; ?>" style="background:<?php echo $child['color']; ?>"></a>
											<?php } ?>
										</div>
									</li>

								<? } ?>
							<? } ?>
						<? } ?>
					<? } ?>

					<li>
						<a href="/katalog/" class="btn btnk">Кухни на заказ</a>
					</li>
					<li>
						<a class="menu_footer_r_image" href="#consultation" data-modal="consultation">
							<img src="images/new/svg/menu_footer_r_image.jpg" alt="Кухня по своему проекту">
							<div class="shadow"></div>
							<div class="img_text">Мебель по своему проекту</div>
						</a>
					</li>
				</ul>
			</li>
			<li><a href="/shkafy/">Шкафы</a></li>
			<li><a href="/prihozhie/">Прихожие</a></li>
			<li><a href="/mebel-dlya-spalni/">Спальни</a></li>
			<li><a href="/gostinyie/">Детские</a></li>
			<li><a href="/gostinyie/">Гостиные</a></li>
			<li><a href="/garderobnyie/">Гардеробные</a></li>
			<li><a href="/kabinety/">Кабинеты</a></li>


		</ul>
	</div>

<?php } ?>