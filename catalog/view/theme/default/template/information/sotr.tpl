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
			<h1>Сотрудничество</h1>
			</div>
			</div>
		
		<div class="">
		  <div class="container">



<div class="row">
	<div class="abz">
		Вы специалист в сфере дизайна интерьеров  или обладатель хорошего вкуса  и знаний в этой области? Мы предлагаем индивидуальные условия и рассмотрим ваши предложения. Мы предлагаем быстрый просчет индивидуального проекта, консультации личного менеджера и 3D-визуализацию.
		Выгодные условия, индивидуальный подход к каждому клиенту. Гарантируем  выполнение всех пунктов договора
	</div> 	
	<div class="catalog-box" style="margin-top:20px;">
		<div class="row">
			<h2 style="margin-top:10px;">Дизайнерам</h2>
		</div>
		<div class="row rasr">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					<img src="images/onas/sotr1.png"/><br/>
					<span>Скорость <span class="red">*</span></span><br/>
					<span class="red">*</span> Оперативное составление проекта, сметы и внесение правок<br/>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					<img src="images/onas/sotr2.png"/><br/>
					<span>Личный менеджер</span><br/>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 clear">
					<img src="images/onas/sotr3.png"/><br/>
					<span>Договор <span class="red">*</span></span><br/>
					<span class="red">*</span> Оказание индивидуальный услуг<br/>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					<img src="images/onas/sotr4.png"/><br/>
					<span>Бесплатная 3D визуализация</span><br/>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 clear">
					<img src="images/onas/sotr5.png"/><br/>
					<span>Портфолио <span class="red">*</span></span><br/>
					<span class="red">*</span> Пакет  наших работ и материалы<br/>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				

				<div id="sotr1" class="sotr forma tovar-white"> 
                  <div class="title">Заявка о сотрудничестве</div>
                  <div class="center"><img src="images/onas/sotr8.jpg"/></div>
                  <div class="forma_content">
                   <input type="hidden" name="model" value=""/>
                   <input type="hidden" name="title" value="Сотрудничество с дизайнером"/>
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
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text com"><a class="buttonfile button" data-loading-text="Загружаем...">Прикрепить проект</a></div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                          <input type="text" readonly name="namefile" value="Прикрепите эскиз (если есть)" />
                          <input type="hidden" name="file" value="" />
                       </div>

                   </div>
                   <div class="clear"></div>
                   <div class="help">Если у Вас имеются готовые бланки замера или дизайн проект, прикрепите их и мы подробно просчитаем Ваш проект
                         </div>
                    <div style="text-align:right">
                        <input type="radio" name="otvet" id="mail" value="mail"><label for="mail" style="padding-left:12px;">Ответить на почту</label>
                        <input type="radio" name="otvet" id="telefone" value="telefone"><label for="telefone">Перезвонить</label>
                    </div>
                    <div class="text-center">
                   <a href="" onclick="return false;" rel="nofollow" class="send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить</a></div>
                   <div class="clear"></div>
                  </div>
                 </div>
				
			</div>
			
		</div>
	</div>
	<div class="abz"><br/><br/>Строительным компаниям и проектным организациям  мы предлагаем  комплекс услуг  мебельной тематики. Спроектируем и подберем дизайн интерьера, оптимально расставим мебель с учетом особенностей конкретного помещения, сделаем 3D-визуализацию для полного представления конечного результата.  Мы работаем с представлением договора и  для каждого клиента подбираем выгодные условия сотрудничества</div>
	<div class="catalog-box" style="margin-top:20px;">
		<div class="row">
			<h2 style="margin-top:10px;">Строительные компании и архитекторы</h2>
		</div>
		<div class="row rasr">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					<img src="images/onas/sotr7.png"/><br/>
					<span>Дизайнер-замерщик <span class="red">*</span></span><br/>
					<span class="red">*</span> со всеми образцами материалов и аксессуаров<br/>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					<img src="images/onas/sotr2.png"/><br/>
					<span>Персональный менеджер</span><br/>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 clear">
					<img src="images/onas/sotr3.png"/><br/>
					<span>Договор <span class="red">*</span></span><br/>
					<span class="red">*</span> индивидуального сотрудничества<br/>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					<img src="images/onas/sotr4.png"/><br/>
					<span>Визуализация проекта в 3D</span><br/>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div id="sotr2" class="sotr forma tovar-white"> 
                  <div class="title">Заявка о сотрудничестве</div>
                  <div class="center"><img src="images/onas/sotr9.jpg"/></div>
                  <div class="forma_content">
                   <input type="hidden" name="model" value=""/>
                   <input type="hidden" name="title" value="Сотрудничество с архитектором"/>
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
                       <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 text com"><a class="buttonfile button" data-loading-text="Загружаем...">Прикрепить проект</a></div>
                       <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                          <input type="text" readonly name="namefile" value="Прикрепите эскиз (если есть)" />
                          <input type="hidden" name="file" value="" />
                       </div>

                   </div>
                   <div class="clear"></div>
                   <div class="help">Если у Вас имеются готовые бланки замера или дизайн проект, прикрепите их и мы подробно просчитаем Ваш проект
                         </div>
                    <div style="text-align:right">
                        <input type="radio" name="otvet" id="mail1" value="mail"><label for="mail1" style="padding-left:12px;">Ответить на почту</label>
                        <input type="radio" name="otvet" id="telefone1" value="telefone"><label for="telefone1">Перезвонить</label>
                    </div>
                    <div class="text-center">
                   <a href="" onclick="return false;" rel="nofollow" class="send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить</a></div>
                   <div class="clear"></div>
                  </div>
                 </div>
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
<!-- <p><img src="http://www.aldas.ru/image/catalog/slider/kuhni-v-rassrochku.jpg" style="height:auto; width:100%" /></p>

<h4>Кухни в рассрочку, без переплат и оформления кредита в банке.</h4>

<p><br />
&nbsp;</p>

<blockquote>
<p>Как это происходит?</p>
</blockquote>

<p><br />
&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td><img src="http://www.aldas.ru/image/catalog/slider/shag-1.jpg" /></td>
			<td>Вы выбираете модель, связываетесь с нами удобным для вас способом</td>
		</tr>
	</tbody>
</table>

<p><br />
&nbsp;</p>

<p><br />
&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td><img src="http://www.aldas.ru/image/catalog/slider/shag-2.jpg" /></td>
			<td>Приезжаете к нам в офис с готовым проектом или вызываете замерщика на дом</td>
		</tr>
	</tbody>
</table>

<p><br />
&nbsp;</p>

<p><br />
&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td><img src="http://www.aldas.ru/image/catalog/slider/shag-3.jpg" /></td>
			<td>Составляется договор предоплаты, вы оплачиваете 50% стоимость от суммы заказа</td>
		</tr>
	</tbody>
</table>

<p><br />
&nbsp;</p>

<p><br />
&nbsp;</p>

<table>
	<tbody>
		<tr>
			<td><img src="http://www.aldas.ru/image/catalog/slider/shag-4.jpg" /></td>
			<td>Остаток суммы оплачиваете равными частями сроком до 12 месяцев</td>
		</tr>
	</tbody>
</table>

<p><br />
&nbsp;</p>

<p><br />
&nbsp;</p>

<blockquote>
<p>Способы оплаты за изготовленную нами мебель:</p>
</blockquote>

<p><br />
&nbsp;</p>

<ul>
	<li>наличными в офисе;</li>
	<li>перечислением денег на указанный нами банковский счет;</li>
	<li>кредитной картой через переносной автомат</li>
</ul>

<p><br />
&nbsp;</p>
 -->

<?php echo $footer; ?>
