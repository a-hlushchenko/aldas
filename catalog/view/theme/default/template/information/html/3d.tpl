<?php echo $header; ?>
<style>
	img {
		padding:0!important;
	    border: none!important;
	    margin:0!important;
	    border-radius: 0!important;
	}
	.information-information #content .row{margin:40px -15px!important;}
	.information-information h1, .information-information h2{color:#ed4931!important;}
	h2{margin-bottom:30px!important;margin-top:20px!important;}
	p{line-height:23px;}

	#content{color:#000!important;}
	.table{display:table;table-layout: fixed;}
	.cell{display:table-cell;padding:5px;}
	.cell img{width: 100%;height:auto;}
	.cell .txt1{display: block;margin:15px 0 0;font-size:22px;font-weight:bold;}
	.cell .txt2{color:#e84c3d;font-size: 16px;}
	.information-information #content .row.form{background: url('images/n_aldas/3d-fon.jpg') center no-repeat;padding:50px 0;margin-bottom:0!important;
		}
	.form .forma{display:block;width:520px;max-width: 520px;
		margin-left: -260px;
		min-width: 320px;
		border-radius:10px;
		box-shadow:0 0 22px #6f6f6f;
		-moz-box-shadow:0 0 22px #6f6f6f;
		-webkit-box-shadow:0 0 22px #6f6f6f;
		color:#747474;
	}
	.form .mleft{margin-left: 50%;}
	.footer-top{padding-top:0px!important;}
	.buttonfile1{
		color: #e84c3d;
		font-size: 16px;
		font-weight: normal!important;
		text-decoration: underline;
	}
	.send.button{border-radius: 25px;font-size: 20px;font-weight:normal;}
	.lab label{font-size: 14px;}
	#tehnika .item{margin: 10px;}
	#tehnika img{
		/*width: 100%;
		height: auto;*/
		max-width: 100%;
	}
	@media (max-width:992px){
		.cell .txt1{font-size: 18px;}
		.cell .txt2{font-size: 14px;}
	}
	@media (max-width:768px){
		.form .forma{
			width: 320px;
			margin-left: -160px;
		}
		.cell .txt1{font-size: 15px;}
		.cell .txt2{font-size: 11px;}
	}
	@media (max-width:565px){
		.table{display:block}
		.cell{display: block;width: 50%;float: left;}
	}
	#tehnika .owl-prev,
	#tehnika .owl-next {top:33%;height:30%!important;
		background: #ed4931!important; opacity: 0.5;font-size: 17px!important; }
	#tehnika .owl-prev{left:11px!important;
		border-radius: 0 200px 200px 0 !important;}
	#tehnika .owl-next {right:11px!important;border-radius: 200px 0 0 200px !important;}
	#tehnika .fa{top: 50%;margin-top: -19px;position: absolute;left: 28%;}
	#tehnika .owl-next .fa{left:auto;right: 28%;}
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
			<h1>3D ДИЗАЙН-ПРОЕКТ КУХОНЬ</h1>
		</div>


		<div class="container text-center">
			<div class="row">
				<div class="col-sm-10 col-xs-12 col-sm-offset-1">
					<p>Вы решили приобрести эксклюзивную мебель, изготовленную специально для вас, по индивидуальному проекту?</p>
					<p>Определиться с окончательным выбором вам поможет бесплатный комплект услуг по фотореалистичной визуализации и дизайну, который наша компания предлагает всем своим клиентам. Вы увидите, как изготовленная нами мебель будет выглядеть в вашей квартире, а наш профессиональный дизайнер поможет выбрать оптимальный цвет и стиль, который наиболее выигрышно смотреться именно в вашем случае.</p>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-10 col-xs-12 col-sm-offset-1">
					<h2>Пример фотореалистичной визуализации</h2>
				    <div id="tehnika" class="owl-carousel owl-theme">
	                  <div class="item">
	                  	<img src="images/onas/3d2.jpg">
	                  </div>
	                  <div class="item">
	                  	<img src="images/onas/3d3.jpg">
	                  </div>
	                  <div class="item">
	                  	<img src="images/onas/3d4.jpg">
	                  </div>
	                  <div class="item">
	                  	<img src="images/onas/3d5.jpg">
	                  </div>
          			</div>
				</div>
			</div>
			<script>
			$(document).ready(function(){
			$('#tehnika').owlCarousel({
			    items: 2,
			    margin: 10,
			    navigation: true,
			    navigationText: ['<i class="fa fa-angle-left fa-2x"></i>', '<i class="fa fa-angle-right fa-2x"></i>'],
			    pagination: false,
			    lazyLoad: true,
			    transitionStyle: true,
			    itemsDesktop : [1199,2],
			      itemsDesktopSmall : [992,2],
			      itemsTablet : [768, 2],
			      itemsMobile : [320, 1]
			});
			});
			</script>

			<div class="row project">
				<div class="col-xs-12">
					<h2>Как получить 3D проект бесплатно?</h2>

					<div class="table">
						<div class="cell">
							<img src="images/n_aldas/3d1.jpg">
							<span class="txt1">Обращение в компанию</span>
							<span class="txt2">интернет, телефон, салон</span>
						</div>
						<div class="cell">
							<img src="images/n_aldas/3d2.jpg">
							<span class="txt1">Составление и согласование эскиза проекта</span>
							<span class="txt2">с менеджером-дизайнером</span>
						</div>
						<div class="cell">
							<img src="images/n_aldas/3d3.jpg">
							<span class="txt1">3D визуализация проекта</span>
							<span class="txt2">в течении 2-х дней</span>
						</div>
						<div class="cell">
							<img src="images/n_aldas/3d4.jpg">
							<span class="txt1">Внесение правок в проект по согласованию</span>
							<span class="txt2">как в 3D так и в эскизе</span>
						</div>
						<div class="cell">
							<img src="images/n_aldas/3d5.jpg">
							<span class="txt1">Покупка = рассрочка</span>
							<span class="txt2">0% до 12 месяцев</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row form">
				<div class="mleft">
				<div id="3d" class="sotr forma tovar-white sotr2">

                  <div class="forma_content">
                   <input type="hidden" name="model" value=""/>
                   <input type="hidden" name="title" value="Заявка на бесплатный 3d проект"/>
                   <div class="fio">
                      <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">Имя:</div>
                      <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 "><input type="text" name="name" value=""/></div>
                   	  <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">E-mail:</div>
                   	  <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"><input type="text" name="email" value=""/></div>
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">Телефон:</div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 "><input type="text" name="tel" value="" /></div>
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text com">Сообщение:<br/><span class="help">(Или любой ваш вопрос)</span></div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"><textarea name="comment"></textarea></div>
                       <!--<div class="left com">Прикрепить эскиз:<br/><span class="help">(Если имеется)</span></div>-->
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text com"><a class="buttonfile1" data-loading-text="Загружаем...">Прикрепить</a></div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                          <input type="text" readonly name="namefile" value="Прикрепите эскиз (если есть)" />
                          <input type="hidden" name="file" value="" />
                       </div>

                   </div>
                   <div class="clear"></div>
                   <div class="help">Если у Вас имеются готовые бланки замера или дизайн проект, прикрепите их и мы подробно просчитаем Ваш проект
                         </div>
                    <div class="text-right lab">
                        <input type="radio" name="otvet" id="mail" value="mail"><label for="mail">Ответить на почту</label>
                        <input type="radio" name="otvet" id="telefone" checked value="telefone"><label for="telefone">Перезвонить</label>
                    </div>
                    <div class="text-center">
                   <a href="" onclick="return false;" rel="nofollow" data-id="3d" class="send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить</a></div>
                   <div class="clear"></div>
                  </div>
                 </div>
                 </div>
			</div>

		</div>
	</div>
</div>

<?php echo $footer; ?>
