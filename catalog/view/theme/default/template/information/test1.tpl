<?php echo $header; ?>

  <div class="container information-information">

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
		
		  <div class="tovar-grey">
		  <div class="container">
			<h1>3D  фотореалестичная визуализация</h1>
			</div>
			</div>
		
		<div class="">
		  <div class="container">
<div class="row cont">
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		<img src="images/onas/3d1.jpg"/>
	</div>
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		Вы решили приобрести эксклюзивную мебель, изготовленную специально для вас, по индивидуальному проекту? <br/>
		Определиться  с окончательным выбором вам поможет  бесплатный комплект услуг по фотореалистичной визуализации и дизайну, который наша компания предлагает всем своим клиентам. Вы увидите, как изготовленная нами мебель будет выглядеть в вашей квартире, а наш профессиональный дизайнер  поможет выбрать оптимальный цвет и стиль, который наиболее выигрышно смотреться именно в вашем случае.
	</div> 	
</div> 
<div class="row cont">
	<h2 style="text-align:center;"class="red">Пример фотореалистичной визуализации</h2>
</div> 
<div class="row cont">
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		<img src="images/onas/3d2.jpg"/>
	</div> 	
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		<img src="images/onas/3d3.jpg"/>
	</div>
</div> 	
<div class="row cont">
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		<img src="images/onas/3d4.jpg"/>
	</div> 	
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		<img src="images/onas/3d5.jpg"/>
	</div>
</div> 	
<div class="row">
	<div class="catalog-box">
		<div class="row">
			<h2 style="text-align:center;">Как получить 3D проект  бесплатно?</h2>
		</div>
		<div class="row">
			Вы уже выбрали понравившуюся модель гарнитура? А может быть, у вас есть собственный проект мебели? Оставьте нам сообщение на сайте или позвоните по указанному нами номеру. Дизайнер составит проект и в ближайшие 2-3 дня представит вам 3D макет, после чего вы сможете внести  правки и окончательно определиться с выбором
		</div>
		<div class="row">
			<div class="col2">
				<img src="images/onas/3d1.png"/><br/>
				<span>Шаг 1.</span><br/>
				Обращение в компанию (интернет, телефон, салон)<br/>
			</div>
			<div class="col2">
				<img src="images/onas/3d2.png"/><br/>
				<span>Шаг 2.</span><br/>
				Составление и согласование эскиза проекта с менеджером-дизайнером<br/>
			</div>
			<div class="col2">
				<img src="images/onas/3d3.png"/><br/>
				<span>Шаг 3.</span><br/>
				3D визуализация проекта в течении 2-х дней<br/>
			</div>
			<div class="col2">
				<img src="images/onas/3d4.png"/><br/>
				<span>Шаг 4.</span><br/>
				Внесение правок в проект по согласованию (как в 3d так и в эскизе)<br/>
			</div>
			<div class="col2">
				<img src="images/onas/3d5.png"/><br/>
				<span>Шаг 5.</span><br/>
				Покупка = рассрочка 0% до 12 месяцев<br/>
				<a href="kuhni-v-rassrochku/" class="button">Подробнее</a>
			</div>
		</div>

	</div>
</div>



		  </div>
		</div>

			<?php echo $content_bottom; ?>

		  <?php echo $column_right; ?>
	  </div>
 
</div>

<?php echo $footer; ?>
