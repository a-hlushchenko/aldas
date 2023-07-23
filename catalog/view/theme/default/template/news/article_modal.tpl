<style>
	.container_form {
		max-width: none;
		width: 90%;
	}

	.review {
		width: 100%;
	}

	/* .MsoNormal {
		display: none;
	} */
</style>

<div class="review">

	<div class="review-left">
		<h1><?php echo $heading_title; ?></h1>
		<div class="review-content">

			<div class="review-top">

				<div class="review-author">
					<img src="/img/svg/review-icon.svg" alt="author">
					<!-- <strong>Юлия М.</strong> -->
				</div>

				<div class="review-date"><?= $date_added ?></div>

			</div>

			<p class="review-content-bottom">
				<?php
				/*$message = strip_tags($short_description, "<br><p><u><span><hr><section>");
				$message = preg_replace("/(<br\ ?\/?>)+/", "<br/>", $message);
				$message = preg_replace("/\s+/", " ", $message);*/
				$message = str_replace('<p class=MsoNormal><o:p>&nbsp;</o:p></p>', '', $description);
				echo $message; ?></p>

		</div>
	</div>

	<div class="review-right">

		<div class="swiper">
			<div id="tehnika" class="">
				<div class="swiper-wrapper">

					<?php if ($thumb) { ?>
						<div class="item swiper-slide first-img-container">
							<a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
						</div>
					<?php } ?>

					<?php if ($images) { ?>
						<ul class="thumbnails">
							<?php foreach ($images as $image) { ?>
								<div class="item swiper-slide">
									<a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
								</div>
							<?php } ?>
						</ul>
					<?php } ?>
				</div>
				<div class="button-next"></div>
				<div class="button-prev"></div>
				<div class="swiper-pagination"></div>
			</div>
		</div>

		<div class="review-right-content">
			<strong>В проекте:</strong>
			<p><?php echo $reviews; ?></p>
		</div>

	</div>

</div>