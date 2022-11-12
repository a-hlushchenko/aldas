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
			<h1>Кухня в рассрочку без переплаты</h1>
			</div>
			</div>
		
		<div class="">
		  <div class="container">

<div>
	Наша компания предоставляет своим клиентам возможность приобретения кухонного гарнитура в рассрочку, без переплаты и задействования  банков. В этом случае клиент оплачивает половину стоимости готовой кухни  (50%)и оставшуюся часть – равными долями  до 12 месяцев, согласно утвержденному графику платежей, в установленные дни по договору. Все честно и открыто!
</div> 	

<div class="row">
	<div class="catalog-box">
		<div class="row">
			<h2 style="margin-top:10px;">Как это происходит</h2>
		</div>
		<div class="row rasr">
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<img src="images/onas/rasr1.png"/><br/>
				<span>Шаг 1.</span><br/>
				Обращение в компанию (интернет, телефон, салон)<br/>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<img src="images/onas/rasr2.png"/><br/>
				<span>Шаг 2.</span><br/>
				Составление проекта кухни<br/>
				<a href="dizain-kyhni/" class="button">Подробнее</a>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<img src="images/onas/rasr3.png"/><br/>
				<span>Шаг 3.</span><br/>
				Предоплата 50% кухни<br/>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<img src="images/onas/rasr4.png"/><br/>
				<span>Шаг 3.</span><br/>
				Рассрочка равными долями до 12 месяцев. <span>*</span><br/>
			</div>
		</div>
		<div class="row" style="text-align:left;padding-left:20px;">
			<h2 class="red">* Подробные условия рассрочки</h2>
			Срок рассрочки зависит от стоимости мебели. Чем дороже мебель, тем длительнее возможность оформления рассрочки.<br/><br/>
			Стоимости мебели/сроки:<br/>
			•	до 400 тысяч рублей - срок рассрочки составляет до 6-ти месяцев;<br/>
			•	От 400 до 800 тысяч рублей – срок до 8-ми месяцев;<br/>
			•	От 1 млн. и выше – сроком до 12-ти месяцев;<br/><br/>
			Способы оплаты за изготовленную нами мебель:<br/>
			•	наличными в офисе;<br/>
			•	перечислением денег на указанный нами банковский счет;<br/>
			•	кредитной картой через переносной автомат<br/><br/>
			<a href="katalog/" class="butttt">Каталог кухонь</a>
			<style>
			.butttt {
				border: 2px solid #E74C3C;
				border-radius: 8px;
				box-shadow: 0px 0px 7px #E74C3C;
				cursor: pointer;
				display: inline-block;
				line-height: 29px;
				padding: 5px 39px;
				position: relative;
				text-transform: uppercase;
				font-size: 14px;
			}
			</style>
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
