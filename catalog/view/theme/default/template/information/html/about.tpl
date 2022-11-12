<?php echo $header; ?>
<style>
img {padding:0!important;border: none!important;margin:0!important;border-radius: 0!important;}
.information-information #content .row{margin:40px -15px!important;}
.information-information h1, .information-information h2{color:#ed4931!important;}
h2{margin-bottom:30px!important;margin-top:20px!important;}
p{line-height:23px;}
.about-images img {float: left;margin:0.3%!important;}
.about-images .im1 {width:35.3%}
.about-images .im2 {width:16.2%}
.about-images .im3 {width:22.5%}
.about-images .im4 {width:22.5%}
.n_price span{font-size:18px;font-weight:bold;display:block;padding-top:20px;}
.n_price>div{position: relative;}
.fa-minus{position:absolute;top:29px;left:-15px;}
.fa-minus.cl1{top:27px;}
.fa-minus.cl2{top:31px;}
.img1{margin-top:4px!important;}
.img2{margin-top:5px!important;}
.img4{margin-top:19px!important;}
#content{color:#000!important;}
.priem span{display: block;margin:15px 0;font-size:22px;font-weight:bold;}
.priem a{color:#e84c3d;font-size: 16px;text-decoration:underline;}
</style>
  <div class="container information-new">

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
			<h1>О НАС</h1>
		</div>
		
		
		<div class="container text-center">
			<div class="row">
				<div class="col-sm-10 col-xs-12 col-sm-offset-1">
					<p>«Мебель Альдас» – компания, специализирующаяся на производстве мебели на заказ, по индивидуальным проектам.</p>
					<p>Мы изготовим мебель любого размера, от компактного встроенного варианта, который легко поместится на небольшой площади, до обустройства мебели в огромном особняке. Всем нашим клиентам мы предлагаем комплекс услуг, включающие в себя замер помещения, расчет по эскизу, консультацию дизайнера, выполнение 3D макета.</p>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-10 col-xs-12 col-sm-offset-1">
					<h2>Немного о нашем производстве</h2>
				
				</div>
			</div>
			<div class="row about-images">
				
					<img src="images/n_aldas/about-1.jpg" class="im1 img-responsive">
					<img src="images/n_aldas/about-2.jpg" class="im2 img-responsive">
				
					<img src="images/n_aldas/about-3.jpg" class="im3 img-responsive">
					<img src="images/n_aldas/about-4.jpg" class="im4 img-responsive">
				
			</div>
			<div class="row cont">
				<div class="myvideo"><iframe allowfullscreen="" frameborder="0" height="480" src="https://www.youtube.com/embed/VxnmkgdCgis?rel=0&amp;vq=hd720" width="853"></iframe></div>
			</div>
			<div class="row">
				<div class="col-sm-10 col-xs-12 col-sm-offset-1">
					<h2>Лучшие цены</h2>
					
					<p>Мы не стремимся открывать множество салонов, так как это в значительной степени сказывается на себестоимости мебели. <br/>Использование современных технологий вкупе с жесткой оптимизацией всех этапов работы и высокий профессионализм наших сотрудников позволяют нам избегать излишних затрат, как финансовых, так и временных, поэтому мы предлагаем наши гарнитуры по весьма и весьма приятным ценам.</p>
				</div>	
			</div>	
			<div class="row n_price">			
				<div class="col-md-3 col-sm-6 col-xs-6">
					<img src="images/n_aldas/about-price-1.png" class="img1">
					<span>Меньше салонов</span>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<i class="fa fa-minus"></i>
					<img src="images/n_aldas/about-price-2.png" class="img2">
					<span>Меньше персонала<br/>в салонах</span>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<i class="fa fa-minus"></i>
					<img src="images/n_aldas/about-price-3.png" class="img3">
					<span>Интернет технологии</span>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-6">
					<i class="fa fa-minus cl1"></i>
					<i class="fa fa-minus cl2"></i>
					<img src="images/n_aldas/about-price-4.png" class="img4">
					<span>Минимальная цена!</span>
				</div>
			</div>			

			<div class="row priem">
				<h2>Наши преимущества</h2>
			
				<div class="col-sm-4 col-xs-12">
					<img src="images/n_aldas/about-5.jpg">
					<span>Гарантия 5 лет</span>
					
				</div>
				<div class="col-sm-4 col-xs-12">
					<img src="images/n_aldas/about-6.jpg">
					<span>Индивидуальный 3D дизайн</span>
					<a href="dizain-kyhni/" title="Индивидуальный 3D дизайн">Подробнее</a>
				</div>
				<div class="col-sm-4 col-xs-12">
					<img src="images/n_aldas/about-7.jpg">
					<span>Рассрочка 0% до 12 месяцев</span>
					<a href="kuhni-v-rassrochku/" title="Рассрочка 0% до 12 месяцев">Подробнее</a>
				</div>
				
			</div>
			
		</div>
	</div>
</div>

<?php echo $footer; ?>
