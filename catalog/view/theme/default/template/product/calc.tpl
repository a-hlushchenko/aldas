<style>
	.modal {
		background: rgba(11, 11, 11, 0.8);
	}

	#modal-online-raschet {
		z-index: 1060;
	}

	#modal-zakaz1 {
		z-index: 1065;
	}

	#modal-online-raschet .modal-dialog {
		width: 83%;
		margin: auto;
	}

	#modal-online-raschet input[type="radio"] {
		display: none
	}

	#modal-online-raschet label {
		font-size: 20px;
		position: relative;
		font-weight: normal;
		line-height: 23px;
		color: #534d51;
		cursor: pointer
	}

	#modal-online-raschet .modal-content {
		background: #fff;
		padding: 25px;
	}

	.id3_1.new .name2 {
		font-size: 25px;
		color: #534d51;
		margin-bottom: 15px;
		margin-top: 15px;
	}

	.id3_1.new input[type="radio"]+label {
		padding: 0 0 0 34px;
	}

	.id3_1.new .name {
		font-size: 15px;
		color: #63656a;
		margin-bottom: 4px;
		position: relative;
		text-align: left;
		font-weight: normal;
		line-height: 35px;
	}

	.id3_1.new .forma_content2 {
		clear: both;
		margin-top: 20px
	}

	.id3_1.new .endsum {
		font-size: 30px;
		margin: 15px 0;
		font-family: 'mariupolmedium';
		color: #daa769;
		line-height: 32px;
	}

	.id3_1.new .tipbubble1 {
		display: inline;
		font-family: 'Lora';
		font-style: italic;
		font-size: 16px;
		color: #726c70;
		margin: 5px 15px 15px 0px;
		font-weight: normal;
	}

	#modal-online-raschet input[type="radio"]:checked+label::before {
		content: "\2022";
		color: #f3f3f3;
		font-size: 28px;
		text-align: center;
		line-height: 16px;
	}

	#modal-online-raschet input[type="radio"]+label::before {
		content: "";
		display: inline-block;
		width: 16px;
		height: 16px;
		margin-right: 10px;
		position: absolute;
		left: 0;
		top: 5px;
		background-color: #e74c3c;
		border-radius: 8px;
	}

	#modal-online-raschet input[type="text"] {
		display: block;
		width: 100% !important;
		line-height: 30px;
		background: #f1f2f4;
		padding: 2px;
		border: 1px solid #c9c6c5;
	}
</style>
<!--noindex-->
<div id="modal-online-raschet" class="modal">
	<div class="modal-dialog">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<div class="id3_1 new">
				<div class="title">Онлайн расчет</div>
				<div class="forma_content2">

					<div class="tcontent">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="name2">Материал фасада</div>
								<div class="cont">
									<input type="radio" id="mater1" name="mater" data-kef="1" value="Эко-пластик" /><label for="mater1">Эко-пластик
										<span class="tipbubble1">Фасады из МДФ покрытые эко-пластиком. Современный стиль и яркая фактура.</span></label>
									<input type="radio" id="mater2" name="mater" data-kef="1.1" value="Эмаль (МДФ)" /><label for="mater2">Эмаль (МДФ)
										<span class="tipbubble1">Фасады из МДФ с защитным покрытием из эмали. Классический стиль, оптимальная стоимость, экологичность</span></label>
									<input type="radio" id="mater3" name="mater" data-kef="1.2" value="Массив дуба" /><label for="mater3">Массив дерева
										<span class="tipbubble1">Фасады из массива дуба или ясеня. Индивидуальность в сочетании с классическим стилем. Премиальное решение</span></label>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="name2">Комплектация</div>
								<div class="cont">
									<input type="radio" id="koml1" name="kompl" data-price="0" value="Стандарт" checked /><label for="koml1">Стандарт
										<span class="tipbubble1">Базовая комплектация - корпус ЛДСП и фурнитура РФ, элементы декора отсутствуют</span></label>
									<input type="radio" id="koml2" name="kompl" data-price="2500" value="Комфорт" /><label for="koml2">Комфорт
										<span class="tipbubble1">Популярная комплектация из стандартных элементов. Карниз и цоколь входит в комплект, элементы декора отсутствуют</span></label>
									<input type="radio" id="koml3" name="kompl" data-price="5000" value="Престиж" /><label for="koml3">Престиж
										<span class="tipbubble1">Индивидуальные размеры и насыщенная комплектация. Все элементы декора присутствуют и определяются индивидуально</span></label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="name2">Фурнитура</div>
								<div class="cont">
									<input type="radio" id="furnit1" name="furnit" data-price="0" value="Стандарт" checked /><label for="furnit1">Стандарт
										<span class="tipbubble1">Фурнитура со стандартной системой доводки. Используются шариковые подшибники в системе направляющих</span></label>
									<input type="radio" id="furnit2" name="furnit" data-price="4000" value="BLUM премиум" /><label for="furnit2">BLUM премиум
										<span class="tipbubble1">Современные технологии, максимальный комфорт (бесшумные системы доводки). Премиальные решение от компании BLUM / Австрия</span></label>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="name2">Размеры</div>
								<div class="cont">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
											<span class="name">Общая длина кухни (см):</span> <input type="text" class="name" name="dlina" value="250" />
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 hidden">
											<span class="name">Высота (см):</span> <input type="text" class="name" name="height" value="1" />
										</div>
									</div>
									<div class="forma_content2">
										<div class="endsum">Итоговая стоимость: <span></span></div>
										<input type="hidden" name="pricetotal" id="pricetotal" value="{price}" />
										<div class="tipbubble1">Для уточнения деталей и расчета конечной стоимости - отправьте заявку</div>
										<div class="but1 fleft"><a onclick="return false;" class="button b1" data-loading-text="Отправляется... <i class='fa fa-circle-o-notch fa-spin'></i>">Заказать</a></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/noindex-->

<div id="modal-zakaz1" class="modal">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<div id="id6" class="forma forma2 tovar-white" style="display:block;">
					<input type="hidden" name="validate" value="name,tel,email" />
					<input type="hidden" name="model" value="{model}" />
					<input type="hidden" name="title" value="{heading_title}" />
					<input type="hidden" name="titleforma" value="Заявка на расcчет стоимости - Страница товара" />
					<div class="title">Оставьте заявку на расчет вашей кухни</div>
					<div class="title2">Укажите параметры кухни или пришлите свой эскиз.<br />Мы подберем и рассчитаем оптимальный вариант.</div>
					<div class="forma_content">
						<div class="fio">
							<div class="name control-label1">Ваше имя:</div><input type="text" name="name" value="" />
							<div class="tel control-label1">Телефон:</div><input type="text" name="tel" value="" />
							<div class="email">E-mail:</div><input type="text" name="email" value="" />
							<div>Сообщение:</div><textarea name="comment"></textarea>
							<div>Прикрепите эскиз (если есть):</div>
							<div class="file"><input type="text" readonly name="namefile" value="" />
								<input type="hidden" name="file" value="" />
								<input type="button" value="Выбрать файл" id="buttonfile" class="button" data-loading-text="Загружаем...">
							</div>
						</div>
						<div class="center">
							<button type="button" class="btn send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить заявку</button>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	$('.ff3').on('click', function() {
		//yaCounter39342560.reachGoal('kh_zvon');
		$('#modal-online-raschet').modal('show');
	});
	$('#modal-online-raschet .b1').on('click', function() {
		$('#modal-zakaz1').modal('show');
	});
	$('input[name="dlina"], input[name="height"]').keyup(function(eventObject) {
		calc();
	});
	$('input[name="mater"] + label').on('click', function() {
		kef1 = parseFloat($('#' + $(this).attr('for')).attr('data-kef'));
		calc();
	});
	$('input[name="kompl"] + label').on('click', function() {
		kef2 = parseFloat($('#' + $(this).attr('for')).attr('data-price'));
		calc();
	});
	$('input[name="furnit"] + label').on('click', function() {
		kef3 = parseFloat($('#' + $(this).attr('for')).attr('data-price'));
		calc();
	});


	//var price = <?= $intprice; ?>;
	var kef1 = parseInt($('input[name="mater"]:checked').attr('data-kef'));
	var kef2 = parseInt($('input[name="kompl"]:checked').attr('data-price'));
	var kef3 = parseInt($('input[name="furnit"]:checked').attr('data-price'));
	var sum = 0;

	function calc() {

		lenght = parseFloat($('input[name="dlina"]').val().replace(",", "."));
		if (!lenght) {
			lenght = 0;
		}
		height = parseFloat($('input[name="height"]').val().replace(",", "."));
		if (!height) {
			height = 0;
		}
		if (kef1 > 0) {} else {
			$('.endsum span').html('Укажите материал фасада!');
			return false;
		}
		sum = (price * kef1 + kef2 + kef3) * (lenght / 100);
		var oldSum = sum * 1.3;
		var newSum = oldSum * 0.8;


		$('.endsum span').fadeOut('slow', function() {
			$('.endsum span').html(newSum.toFixed() + ' р.' + ' <span class="old-project-price">' + oldSum.toFixed() + ' р.</span>');
			$('.endsum span').fadeIn('slow');
		});
		$('#pricetotal').attr('value', newSum.toFixed() + ' р.');
	}
	calc();
</script>
<script>
	$('#modal-zakaz1 .send').on('click', function() {

		if (block_button) return false;
		var node = this;
		$.ajax({
			url: 'index.php?route=information/callback/sendCalcZakaz',
			type: 'post',
			data: $('#modal-zakaz1 input[type=\'hidden\'], #modal-zakaz1 input[type=\'text\'], #modal-zakaz1 input[type=\'radio\']:checked, #modal-zakaz1 textarea, #modal-online-raschet input[type=\'text\'], #modal-online-raschet input[type=\'hidden\'], #modal-online-raschet input[type=\'radio\']:checked'),
			dataType: 'json',
			beforeSend: function() {
				$('.error').remove();
				$(node).button('loading');
				block_button = true;
			},
			complete: function() {
				$(node).button('reset');
				block_button = false;
			},
			success: function(json) {
				//console.log(json)
				if (json['success']) {
					$('#modal-zakaz1').modal('hide');
					$('#modal-online-raschet').modal('hide');
					$('#send_success .modal-body').html(json['success']);
					$('#send_success').modal('show');
					$('#modal-zakaz1 input[type=\'text\'], #modal-zakaz1 textarea').attr('value', '');
					$('#modal-zakaz1 input[name=\'file\']').attr('value', '');

					//ga('send', 'event', 'button', 'click', 'form5');
					/*if (typeof yaCounter40101690 != 'undefined') { 
					  if(forma_act=='home'){
					    //yaCounter40101690.reachGoal('G_tab_01');
					  } else if(forma_act=='category'){
					    //yaCounter40101690.reachGoal('K_zbut-2');
					  } else if(forma_act=='tovar'){
					    //yaCounter40101690.reachGoal('tovar_raschet_send');
					  } else if(forma_act=='sotr'){
					    //yaCounter40101690.reachGoal('sotr-zayvka');
					  } else if(forma_act=='rasrochka'){
					    //yaCounter40101690.reachGoal('rasrochka-zayvka');
					  } else if(forma_act=='3d'){
					    //yaCounter40101690.reachGoal('3d-proekt');
					  }
					}*/

				} else if (json['error']) {
					//console.log(json['error']);
					if (json['error']['name']) {
						$('#modal-zakaz1 input[name="name"]').after('<span class="error">' + json['error']['name'] + '</span>');
					}
					if (json['error']['tel']) {
						$('#modal-zakaz1 input[name="tel"]').after('<span class="error">' + json['error']['tel'] + '</span>');
					}
					if (json['error']['email']) {
						$('#modal-zakaz1 input[name="email"]').after('<span class="error">' + json['error']['email'] + '</span>');
					}
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});

	});
</script>