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
	h2.twhite{color: #fff!important;text-transform: uppercase;}
	p{line-height:23px;}
	
	#content{color:#000!important;}
	.table{display:table;table-layout: fixed;}
	.cell{display:table-cell;padding:5px;}
	.cell img{width: 100%;height:auto;}
	.cell .txt1{display: block;margin:15px 0 0;font-size:22px;font-weight:bold;}
	.cell .txt2{color:#e84c3d;font-size: 16px;}

	.information-information #content .row.form{background: url('images/n_aldas/partner_fon1.jpg') center top repeat;padding:10px 0 50px;margin-bottom:0!important;
		}
	.information-information #content .row.form.f2{background: url('images/n_aldas/partner_fon2.jpg') center no-repeat;
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

	.priem .txt1{display: block;margin:15px 0;font-size:22px;font-weight:bold;}
	.priem .txt2{display: block;font-size:16px;color:#e84c3d;height: 50px;}
	.priem a{color:#e84c3d;font-size: 16px;text-decoration:underline;height: 50px;display: block;}
	.priem img{width: 100%;max-width: 280px;height: auto;}
	.priem > div {margin-top: 20px;}

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
			<h1>Сотрудничество с нами</h1>
		</div>
		
		
		<div class="container text-center">
			<div class="row">
				<div class="col-sm-10 col-xs-12 col-sm-offset-1">
					<h2>Дизайнерам интерьеров</h2>
					<p>Вы специалист в сфере дизайна интерьеров или обладатель хорошего вкуса и знаний в этой области?</p>
					<p>Мы предлагаем индивидуальные условия и рассмотрим ваши предложения. Мы предлагаем быстрый просчет индивидуального проекта, консультации личного менеджера и 3D-визуализацию. Выгодные условия, индивидуальный подход к каждому клиенту. Гарантируем выполнение всех пунктов договора.</p>
				</div>
			</div>
			
			
			<div class="row project">
				<div class="col-xs-12">
					
					
					<div class="table">
						<div class="cell">
							<img src="images/n_aldas/partner1.jpg">
							<span class="txt1">Скорость</span>
							<span class="txt2">Оперативное составление проекта, сметы и внесение правок</span>
						</div>
						<div class="cell">
							<img src="images/n_aldas/partner2.jpg">
							<span class="txt1">Личный менеджер</span>
						</div>
						<div class="cell">
							<img src="images/n_aldas/partner3.jpg">
							<span class="txt1">Договор</span>
							<span class="txt2">Оказание индивидуальный услуг</span>
						</div>
						<div class="cell">
							<img src="images/n_aldas/partner4.jpg">
							<span class="txt1">Бесплатная 3D визуализайия</span>
						</div>
						<div class="cell">
							<img src="images/n_aldas/partner5.jpg">
							<span class="txt1">Портфолио</span>
							<span class="txt2">Пакет наших работ и материалы</span>
						</div>
					</div>
				</div>	
			</div>	

			<div class="row form">
				<h2 class="twhite">Заявка о сотрудничестве</h2>
				<div class="mleft">
				<div id="3d" class="sotr forma tovar-white sotr2"> 
                  
                  <div class="forma_content">
                   <input type="hidden" name="model" value=""/>
                   <input type="hidden" name="title" value="Заявка о сотрудничестве"/>
                   <div class="fio">
                      <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">Имя:</div>
                      <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 "><input type="text" name="name" value=""/></div>
                   	  <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">E-mail:</div>
                   	  <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"><input type="text" name="email" value=""/></div>
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">Телефон:</div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 "><input type="text" name="tel" value="" /></div>
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text com">Сообщение:<br/><span class="help">(Или любой ваш вопрос)</span></div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"><textarea name="comment"></textarea></div>
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

			<div class="row">
				<div class="col-sm-10 col-xs-12 col-sm-offset-1">
				<h2>Строительные компании и архитекторам</h2>
					<p>Строительным компаниям и проектным организациям мы предлагаем комплекс услуг мебельной тематики.</p>
					<p>Спроектируем и подберем дизайн интерьера, оптимально расставим мебель с учетом особенностей конкретного помещения, сделаем 3D-визуализацию для полного представления конечного результата. Мы работаем с представлением договора и для каждого клиента подбираем выгодные условия сотрудничества.</p>
				</div>
			</div>

			<div class="row priem">
				
			
				<div class="col-sm-3 col-xs-6">
					<img src="images/n_aldas/partner6.jpg">
					<span class="txt1">Дизайнер-замерщик</span>
					<span class="txt2">со всеми образцами материалов и аксессуаров</span>
				</div>
				<div class="col-sm-3 col-xs-6">
					<img src="images/n_aldas/partner7.jpg">
					<span class="txt1">Персональный менеджер</span>
				</div>
				<div class="col-sm-3 col-xs-6">
					<img src="images/n_aldas/partner8.jpg">
					<span class="txt1">Договор</span>
					<span class="txt2">индивидуального сотрудничества</span>
				</div>
				<div class="col-sm-3 col-xs-6">
					<img src="images/n_aldas/partner9.jpg">
					<span class="txt1">Визуализация проекта в 3D</span>
				</div>
				
			</div>

			
			<div class="row form">
				<h2 class="twhite">Заявка о сотрудничестве</h2>
				<div class="mleft">

				<div id="3d2" class="sotr forma tovar-white sotr2"> 
                  
                  <div class="forma_content">
                   <input type="hidden" name="model" value=""/>
                   <input type="hidden" name="title" value="Заявка о сотрудничестве"/>
                   <div class="fio">
                      <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">Имя:</div>
                      <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 "><input type="text" name="name" value=""/></div>
                   	  <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">E-mail:</div>
                   	  <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"><input type="text" name="email" value=""/></div>
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text">Телефон:</div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 "><input type="text" name="tel" value="" /></div>
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text com">Сообщение:<br/><span class="help">(Или любой ваш вопрос)</span></div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12"><textarea name="comment"></textarea></div>
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
                   <a href="" onclick="return false;" rel="nofollow" data-id="3d2" class="send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить</a></div>
                   <div class="clear"></div>
                  </div>
                 </div>
                 </div>
			</div>
			
		</div>
	</div>
</div>

<?php echo $footer; ?>
