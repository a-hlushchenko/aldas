<?php echo $header; ?>

  <div class="container">

	<?php echo $content_top; ?>
	
      <ul class="catalog-list">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
         <li>
        <?php if($breadcrumb['href']){ ?>
          <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } else { ?>
          <?php echo $breadcrumb['text']; ?>
        <?php } ?>
        </li>
        <?php } ?>
      </ul>

	  <div id="content" class="info">
		
		  
		<div class="container">
			<h1><?php echo $heading_title; ?></h1>
		</div>
		
		
		<div class="">
		  <div class="container">
			<?php echo $description; ?>
		  </div>
		</div>

			<?php echo $content_bottom; ?>

		  <?php echo $column_right; ?>
	  </div>
 
</div>

<?php echo $footer; ?>
