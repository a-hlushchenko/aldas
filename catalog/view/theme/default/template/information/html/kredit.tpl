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
	h2.black{color: #000;}
	p{line-height:23px;}
	#content{color:#000!important;}
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
		.cell .txt1{font-size: 15px;}
		.cell .txt2{font-size: 11px;}
	}
	.table{background:#e74a3b;color: #fff;padding: 35px 0;}
	.table p{color: #fff;}
	table {table-layout: fixed;width: 100%;}
	table th{font-size: 20px;padding-left: 8%;line-height: 45px;}
	table td{font-size: 18px;border:1px solid #fff;padding-left: 8%;line-height: 45px;text-align: left;}

	.priem1 span{display: block;margin:15px 0;font-size:18px;font-weight:bold;}
	@media (max-width:768px){
		.priem1 img{float: left;width: 80px;height: auto;}
		.priem1 .rright{margin-left: 115px;}
		.priem1 span{margin-top: 0;}
		.priem1 > div {margin-top: 20px;}
	}
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
	@media (max-width:768px){
		.form .forma{
			width: 320px;
			margin-left: -160px;
		}
	}

	/*
	.n_price span{font-size:18px;font-weight:bold;display:block;padding-top:20px;}
	.n_price>div{position: relative;}
	.fa-minus{position:absolute;top:29px;left:-15px;}
	.fa-minus.cl1{top:27px;}
	.fa-minus.cl2{top:31px;}
	.img1{margin-top:4px!important;}
	.img2{margin-top:5px!important;}
	.img4{margin-top:19px!important;}
	
	*/
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
			<h1>КУХНИ В РАССРОЧКУ БЕЗ ПРОЦЕНТОВ</h1>
		</div>
		<div class="container text-center">
			<div class="row">
				<div class="col-sm-10 col-xs-12 col-sm-offset-1">
					<p>Наша компания предоставляет своим клиентам возможность приобретения кухонного гарнитура в рассрочку, без переплаты и задействования банков. В этом случае клиент оплачивает половину стоимости готовой кухни (50%)и оставшуюся часть – равными долями до 12 месяцев, согласно утвержденному графику платежей, в установленные дни по договору.</p>
					<p>Все честно и открыто!</p>
				</div>
			</div>

			<div class="row priem">
				<h2>Как это происходит</h2>
			
				<div class="col-sm-3 col-xs-6">
					<img src="images/n_aldas/kredit1.jpg">
					<span class="txt1">Обращение в компанию</span>
					<span class="txt2">интернет, телефон, салон</span>
					
				</div>
				<div class="col-sm-3 col-xs-6">
					<img src="images/n_aldas/kredit2.jpg">
					<span class="txt1">Составление проекта кухни</span>
					<a href="dizain-kyhni/" title="Составление проекта кухни">Подробнее</a>
				</div>
				<div class="col-sm-3 col-xs-6">
					<img src="images/n_aldas/kredit3.jpg">
					<span class="txt1">Предоплата</span>
					<span class="txt2">50% от стоимости</span>
					
				</div>
				<div class="col-sm-3 col-xs-6">
					<img src="images/n_aldas/kredit3.jpg">
					<span class="txt1">Рассрочка равными долями</span>
					<span class="txt2">до 12 месяцев*</span>
				</div>
				
			</div>
			<div class="row">

				<h2>*Подробные условия рассрочки</h2>
				<div class="table">
					<p>Срок рассрочки зависит от стоимости мебели.<br/>Чем дороже мебель, тем длительнее возможность оформления рассрочки.</p>
					<div class="col-sm-10 col-xs-12 col-sm-offset-1">
						<table>
							<tr>
								<th>Стоимость мебели</th>
								<th>Сроки</th>
							</tr>
							<tr>
								<td>до 400 000 рублей</td>
								<td>до 6 месяцев</td>
							</tr>
							<tr>
								<td>от 400 000 до 800 000 рублей</td>
								<td>до 8 месяцев</td>
							</tr>
							<tr>
								<td>от 1 млн. и выше</td>
								<td>до 12 месяцев</td>
							</tr>
							
						</table>
					</div>
					<div class="clear"></div>
				</div>

			</div>
			<div class="row priem1">
				<h2 class="black">Способы оплаты за изготовленную нами мебель:</h2>
				<div class="col-sm-4 col-xs-12">
					<img src="images/n_aldas/kredit1.gif">
					<div class="rright">
						<span>Наличными в офисе</span>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<img src="images/n_aldas/kredit2.gif">
					<div class="rright">
						<span>перечислением денег на наш банковский счет</span>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<img src="images/n_aldas/kredit3.gif">
					<div class="rright">
						<span>Кредитной картой через переносной автомат</span>
					</div>	
				</div>
			</div>

			<div class="row form">
				<div class="mleft">
				<div id="3d" class="sotr forma tovar-white"> 
                  
                  <div class="forma_content">
                   <input type="hidden" name="model" value=""/>
                   <input type="hidden" name="title" value="Заявка на рассрочку"/>
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
                   <a href="" onclick="return false;" rel="nofollow" class="send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить</a></div>
                   <div class="clear"></div>
                  </div>
                 </div>
                 </div>
			</div>
				
			
		</div>
			
	</div>
</div>

<?php echo $footer; ?>
