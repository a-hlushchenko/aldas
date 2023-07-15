
tmp = 0;
function call(e) {
	$('.forma').attr('style', 'display:none;');
	if (tmp == e) {
		tmp = 0;
		return false;
	}
	$('#id' + e).fadeIn('slow');
	return false;
}

block_button = false;

$('#id1 .button').live('click', function () {
	if (block_button) return false;
	$.ajax({
		url: 'index.php?route=information/callback/send1',
		type: 'post',
		data: $('#id1 input[type=\'hidden\'], #id1 input[type=\'text\'], #id1 input[type=\'radio\']:checked'),
		dataType: 'json',
		beforeSend: function () {
			$('.warning, .error').remove();
			$('.form-block .submit').attr('disabled', true);
			block_button = true;
		},
		complete: function () {
			$('.form-block .submit').attr('disabled', false);
			block_button = false;
		},
		success: function (json) {
			console.log(json);
			if (json['success']) {
				alert(json['success']);

			} else if (json['error']) {

				if (json['error']['name']) {
					alert(json['error']['name']);
				}

			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	}); //ajax

});

$('#id2 .button').live('click', function () {
	if (block_button) return false;
	$.ajax({
		url: 'index.php?route=information/callback/send2',
		type: 'post',
		data: $('#id2 input[type=\'hidden\'], #id2 input[type=\'text\'], #id2 input[type=\'radio\']:checked, #id2 input[type=\'checkbox\']:checked'),
		dataType: 'json',
		beforeSend: function () {
			$('.warning, .error').remove();
			$('.form-block .submit').attr('disabled', true);
			block_button = true;
		},
		complete: function () {
			$('.form-block .submit').attr('disabled', false);
			block_button = false;
		},
		success: function (json) {
			if (json['success']) {
				alert(json['success']);
			} else if (json['error']) {
				if (json['error']['name']) {
					alert(json['error']['name']);
				}
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#id3 .send.button').live('click', function () {
	if (block_button) return false;
	$.ajax({
		url: 'index.php?route=information/callback/send3',
		type: 'post',
		data: $('#id3 input[type=\'hidden\'], #id3 input[type=\'text\'], #id3 input[type=\'radio\']:checked'),
		dataType: 'json',
		beforeSend: function () {
			$('.warning, .error').remove();
			$('.form-block .submit').attr('disabled', true);
			block_button = true;
		},
		complete: function () {
			$('.form-block .submit').attr('disabled', false);
			block_button = false;
		},
		success: function (json) {
			if (json['success']) {
				alert(json['success']);
			} else if (json['error']) {
				if (json['error']['name']) {
					alert(json['error']['name']);
				}
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	}); //ajax

});
// Рассчитать проект
$('#id3_1 .send.button').on('click', function () {
	if (block_button) return false;
	$.ajax({
		url: 'index.php?route=information/callback/send3_1',
		type: 'post',
		data: $('#id3_1 input[type=\'hidden\'], #id3_1 input[type=\'text\'], #id3_1 input[type=\'radio\']:checked, #id3_1 textarea'),
		dataType: 'json',
		beforeSend: function () {
			$('.warning, .error').remove();
			$('.form-block .submit').attr('disabled', true);
			block_button = true;
		},
		complete: function () {
			$('.form-block .submit').attr('disabled', false);
			block_button = false;
		},
		success: function (json) {
			if (json['success']) {
				//yaCounter39342560.reachGoal('form4');
				ga('send', 'event', 'button', 'click', 'form4')
				$('#send_success .modal-body').html('Заявка отправлена!');
				$('#send_success').modal('show');
				$('#id3_1 input[name=\'namefile\']').val('');
				$('#id3_1 input[name=\'file\']').val('');
			} else if (json['error']) {
				if (json['error']['name']) {
					$('#id3_1 input[name="name"]').after('<span class="error">' + json['error']['name'] + '</div>');
				}
				if (json['error']['tel']) {
					$('#id3_1 input[name="tel"]').after('<span class="error">' + json['error']['tel'] + '</div>');
				}
				if (json['error']['email']) {
					$('#id3_1 input[name="email"]').after('<span class="error">' + json['error']['email'] + '</div>');
				}
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

// шапка Вызвать замерщика
$('#id5 button').live('click', function () {
	if (block_button) return false;
	$.ajax({
		url: 'index.php?route=information/callback/send5',
		type: 'post',
		data: $('#id5 input[type=\'hidden\'], #id5 input[type=\'text\'], #id5 textarea'),
		dataType: 'json',
		beforeSend: function () {
			$('.warning, .error').remove();
			$('#id5 button').button('loading');
			block_button = true;
		},
		complete: function () {
			$('#id5 button').button('reset');
			block_button = false;
		},
		success: function (json) {
			if (json['success']) {
				//yaCounter39342560.reachGoal('form2');
				ga('send', 'event', 'button', 'click', 'form2')
				$('#id5 input[type=\'text\'], #id5 textarea').attr('value', '');
				$('#colorbox3').modal('hide');
				$('#send_success .modal-body').html('Заявка отправлена!');
				$('#send_success').modal('show');
			} else if (json['error']) {
				if (json['error']['name']) {
					$('#id5 .name').append('<span class="error">' + json['error']['name'] + '</div>');
				}
				if (json['error']['tel']) {
					$('#id5 .tel').append('<span class="error">' + json['error']['tel'] + '</div>');
				}
				if (json['error']['email']) {
					$('#id5 .email').append('<span class="error">' + json['error']['email'] + '</div>');
				}
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

// шапка Рассчитать кухню
$('#id6 button').live('click', function () {
	if (block_button) return false;
	$.ajax({
		url: 'index.php?route=information/callback/send6',
		type: 'post',
		data: $('#id6 input[type=\'hidden\'], #id6 input[type=\'text\'], #id6 textarea'),
		dataType: 'json',
		beforeSend: function () {
			$('.warning, .error').remove();
			$('#id6 button').button('loading');
			block_button = true;
		},
		complete: function () {
			$('#id6 button').button('reset');
			block_button = false;
		},
		success: function (json) {
			if (json['success']) {

				//yaCounter39342560.reachGoal('form1');
				ga('send', 'event', 'button', 'click', 'form1')
				//alert(json['success']);
				$('#id6 input[type=\'text\'], #id6 textarea').attr('value', '');
				$('#id6 input[name=\'file\']').attr('value', '');
				$('#colorbox1').modal('hide');

				$('#send_success .modal-body').html('Заявка отправлена!');
				$('#send_success').modal('show');

			} else if (json['error']) {

				if (json['error']['name']) {
					$('#id6 .name').append('<span class="error">' + json['error']['name'] + '</div>');
				}
				if (json['error']['tel']) {
					$('#id6 .tel').append('<span class="error">' + json['error']['tel'] + '</div>');
				}
				if (json['error']['email']) {
					$('#id6 .email').append('<span class="error">' + json['error']['email'] + '</div>');
				}
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	}); //ajax

});

// шапка Заказать звонок
$('#id7 .button').live('click', function () {
	if (block_button) return false;
	$.ajax({
		url: 'index.php?route=information/callback/send7',
		type: 'post',
		data: $('#id7 input[type=\'hidden\'], #id7 input[type=\'text\'], #id7 input[type=\'radio\']:checked'),
		dataType: 'json',
		beforeSend: function () {
			$('.warning, .error').remove();
			$('#id7 button').button('loading');
			block_button = true;
		},
		complete: function () {
			$('#id7 button').button('reset');
			block_button = false;
		},
		success: function (json) {

			if (json['success']) {
				//yaCounter39342560.reachGoal('form3');
				ga('send', 'event', 'button', 'click', 'form3')

				alert(json['success']);
				$('#id7 input[type=\'text\'], #id7 textarea').attr('value', '');
				$('#id7 input[name=\'file\']').attr('value', '');
				$('#colorbox2').modal('hide');


			} else if (json['error']) {

				if (json['error']['name']) {
					$('#id7 .name').append('<span class="error">' + json['error']['name'] + '</div>');
				}
				if (json['error']['tel']) {
					$('#id7 .tel').append('<span class="error">' + json['error']['tel'] + '</div>');
				}
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	}); //ajax

});







html5 = '<div id="colorbox3" class="modal">';
html5 += '  <div class="modal-dialog">';
html5 += '    <div class="modal-content">';
html5 += '      <div class="modal-body"><div id="id5" class="forma forma2 tovar-white" style="display:block;"> ';
html5 += '         <div class="title">Оставьте заявку на вызов замерщика</div>';
html5 += '         <div class="title2">Бесплатный вызов специалиста для точного замера<br/>помещения, консультации и составления дизайн-проекта мебели.</div>';
html5 += '          <div class="forma_content">';
html5 += '          <div class="fio"><div class="name control-label1">Ваше имя:</div><input type="text" name="name" value=""/>';
html5 += '          <div class="tel control-label1">Телефон:</div><input type="text" name="tel" value="" />';
html5 += '          <div class="email">E-mail:</div><input type="text" name="email" value="" />';
html5 += '          <div>Ваш адрес и комментарий:</div><textarea name="comment"></textarea>';
html5 += '          </div>';
html5 += '          <div class="center">';
html5 += '          <button type="button" class="btn send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить заявку</button>';
html5 += '          </div>';
//html5 += '          <div class="center"><a href="" style="float:none;" onclick="return false;" rel="nofollow" class="send button">Отправить заявку</a></div>';
//html5 += '          <div class="center help">Менеджеры сориентируют Вас по стоимости. Это их работа!</div>';
html5 += '          <div class="clear"></div>';
html5 += '          </div>';
html5 += '      </div></div>';
html5 += '    </div';
html5 += '  </div>';
html5 += '</div>';

$('body').append(html5);
$('.colorbox3').live('click', function () {
	//yaCounter39342560.reachGoal('kh_zam');
	$('#colorbox3').modal('show');
});

html6 = '<div id="colorbox1" class="modal">';
html6 += '  <div class="modal-dialog">';
html6 += '    <div class="modal-content">';
html6 += '      <div class="modal-body"><div id="id6" class="forma forma2 tovar-white" style="display:block;"> ';
html6 += '         <div class="title">Оставьте заявку на расчет вашей мебели</div>';
html6 += '         <div class="title2">Укажите параметры мебели или пришлите свой эскиз.<br/>Мы подберем и рассчитаем оптимальный вариант.</div>';
html6 += '          <div class="forma_content">';
html6 += '          <input type="hidden" name="model" value="" />';
html6 += '          <input type="hidden" name="nameproduct" value="" />';
html6 += '           <div class="fio"><div class="name control-label1">Ваше имя:</div><input type="text" name="name" value=""/>';
html6 += '            <div class="tel control-label1">Телефон:</div><input type="text" name="tel" value="" />';
html6 += '           <div class="email">E-mail:</div><input type="text" name="email" value="" />';
html6 += '           <div>Сообщение:</div><textarea name="comment"></textarea>';
html6 += '             <div>Прикрепите эскиз (если есть):</div>';
html6 += '             <div class="file"><input type="text" readonly name="namefile" value="" />';
html6 += '              <input type="hidden" name="file" value="" />';
html6 += '              <input type="button" value="Выбрать файл" id="buttonfile" class="button" data-loading-text="Загружаем...">';
html6 += '             </div>';
//html6 +='             ';
html6 += '          </div>';
html6 += '          <div class="center">';
html6 += '          <button type="button" class="btn send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Отправить заявку</button>';
//html6 += '             <a href="" style="float:none;" onclick="return false;" rel="nofollow" class="send button">Отправить заявку</a>';
html6 += '          </div>';
//html6 += '          <div class="center help">Менеджеры сориентируют Вас по стоимости. Это их работа!</div>';
html6 += '          <div class="clear"></div>';
html6 += '          </div>';
html6 += '      </div></div>';
html6 += '    </div';
html6 += '  </div>';
html6 += '</div>';

$('body').append(html6);
$('.colorbox1').live('click', function () {
	//yaCounter39342560.reachGoal('kh_ras');
	$('#colorbox1').modal('show');
});

html7 = '<div id="colorbox2" class="modal">';
html7 += '  <div class="modal-dialog">';
html7 += '    <div class="modal-content">';
html7 += '      <div class="modal-body"><div id="id7" class="forma forma2 tovar-white" style="display:block;"> ';
html7 += '         <div class="title">Оставьте заявку на обратный звонок</div>';
html7 += '         <div class="title2">Калькуляция и помощь по любым вопросам</div>';
html7 += '          <div class="forma_content">';
//html7 += '          <input type="hidden" name="model" value="<?=$model;?>"/>';
//html7 += '          <input type="hidden" name="title" value="<?=$heading_title;?>"/>';
html7 += '          <div class="fio"><div class="name control-label1">Ваше имя:</div><input type="text" name="name" value=""/>';
html7 += '          <div class="tel control-label1">Телефон:</div><input type="text" name="tel" value="" />';
html7 += '          </div>';
html7 += '          <div class="center">';
html7 += '          <button type="button" class="btn send button" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Отправка...">Перезвоните мне</button>';
html7 += '          </div>';
//html7 += '          <div class="center"><a href="" style="float:none;" onclick="return false;" rel="nofollow" class="send button">Перезвоните мне</a></div>';
//html7 += '          <div class="center help">Менеджеры сориентируют Вас по стоимости. Это их работа!</div>';
html7 += '          <div class="clear"></div>';
html7 += '          </div>';
html7 += '      </div></div>';
html7 += '    </div';
html7 += '  </div>';
html7 += '</div>';

$('body').append(html7);
$('.colorbox2').live('click', function () {
	//yaCounter39342560.reachGoal('kh_zvon');
	$('#colorbox2').modal('show');
});

// формы сотрудничество
/* $('.sotr .send').live('click', function() {
   if(block_button) return false;
   id=$(this).parent().parent().parent().attr('id');
   $.ajax({
	 url: 'index.php?route=information/callback/send6',
	 type: 'post',
	 data: $('#'+id+' input[type=\'hidden\'], #'+id+' input[type=\'text\'], #'+id+' textarea, #'+id+' input[type=\'radio\']:checked'),
	 dataType: 'json',
	 beforeSend: function() {
	   $('.warning, .error').remove();
	   $('#'+id+' .send').button('loading');
	   block_button = true;
	 },
	 complete: function() {
	   $('#'+id+' .send').button('reset');
	   block_button = false;
	 },
	 success: function(json) {
	   if (json['success']) {

		 //alert(json['success']);
		 $('#'+id+' input[type=\'text\'], #'+id+' textarea').attr('value','');
		 $('#'+id+' input[name=\'file\']').attr('value','');
		 //$('#colorbox1').modal('hide');

		 $('#send_success .modal-body').html('Заявка отправлена!');
		 $('#send_success').modal('show');

	   } else if (json['error']) {

		 if(json['error']['name']){
		   $('#'+id+' input[name="name"]').after('<span class="error">'+json['error']['name']+'</div>');
		 }
		 if(json['error']['tel']){
		   $('#'+id+' input[name="tel"]').after('<span class="error">'+json['error']['tel']+'</div>');
		 }
		 if(json['error']['email']){
		   $('#'+id+' input[name="email"]').after('<span class="error">'+json['error']['email']+'</div>');
		 }
	   }
	 },
	 error: function(xhr, ajaxOptions, thrownError) {
	   alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	 }
   }); //ajax

 }); */

// формы сотрудничество новая
$('.sotr2 .send').live('click', function () {
	if (block_button) return false;
	id = $(this).attr('data-id');
	$.ajax({
		url: 'index.php?route=information/callback/send6',
		type: 'post',
		data: $('#' + id + ' input[type=\'hidden\'], #' + id + ' input[type=\'text\'], #' + id + ' textarea, #' + id + ' input[type=\'radio\']:checked'),
		dataType: 'json',
		beforeSend: function () {
			$('.warning, .error').remove();
			$('#' + id + ' .send').button('loading');
			block_button = true;
		},
		complete: function () {
			$('#' + id + ' .send').button('reset');
			block_button = false;
		},
		success: function (json) {
			if (json['success']) {
				//yaCounter39342560.reachGoal('kh_ras_send');
				//alert(json['success']);
				$('#' + id + ' input[type=\'text\'], #' + id + ' textarea').attr('value', '');
				$('#' + id + ' input[name=\'file\']').attr('value', '');
				//$('#colorbox1').modal('hide');

				$('#send_success .modal-body').html('Заявка отправлена!');
				$('#send_success').modal('show');

			} else if (json['error']) {

				if (json['error']['name']) {
					$('#' + id + ' input[name="name"]').after('<span class="error">' + json['error']['name'] + '</div>');
				}
				if (json['error']['tel']) {
					$('#' + id + ' input[name="tel"]').after('<span class="error">' + json['error']['tel'] + '</div>');
				}
				if (json['error']['email']) {
					$('#' + id + ' input[name="email"]').after('<span class="error">' + json['error']['email'] + '</div>');
				}
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			//alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	}); //ajax

});

// загрузка файла
$('.buttonfile, .buttonfile1, #buttonfile, #buttonfile2, #buttonfile3, #buttonfile4').on('click', function () {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="position:absolute;margin-top:-2000px;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
		clearInterval(timer);
	}

	timer = setInterval(function () {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function () {
					$(node).button('loading');
					$('.text-danger, .text-success').remove();
				},
				complete: function () {
					$(node).button('reset');
				},
				success: function (json) {
					$('.text-danger').remove();
					if (json['error']) {
						//$(node).parent().parent().find('#'+$(node).attr('id')).after('<div class="text-danger">' + json['error'] + '</div>');
						// $(node).parent().parent().find('input[name="namefile"]').after('<div class="text-danger">' + json['error'] + '</div>');
						$(node).after('<div class="text-danger">' + json['success'] + '</div>');
					}

					if (json['success']) {
						//alert(json['success']);
						//$(node).parent().parent().find('input[name="namefile"]').after('<div class="text-success">' + json['success'] + '</div>');
						$(node).after('<div class="text-success">' + json['success'] + '</div>');

						$(node).parent().parent().find('input[name="file"]').attr('value', json['code']);
						$(node).parent().parent().find('input[name="namefile"]').attr('value', json['name']);
					}
				},
				error: function (xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});

$(document).on('click', '.getProdCalc', function () {

	//console.log('0');
	if (block_button) return false;
	$('#modal-online-raschet').remove();
	var node = this;
	prid = parseInt($(this).attr('data-prid'));
	$.ajax({
		url: 'index.php?route=product/product/getProductCalc&product_id=' + prid,
		type: 'post',
		data: '',
		dataType: 'html',
		beforeSend: function () {
			$(node).button('loading');
			block_button = true;
		},
		complete: function () {
			$(node).button('reset');
			block_button = false;
			//console.log('1');
		},
		success: function (data) {
			//console.log('2');
			//console.log(data);
			if (data) {
				$('#send_success').after(data);
				$('#modal-online-raschet').modal('show');
				/*if (typeof yaCounter40101690 != 'undefined') {
				  yaCounter40101690.reachGoal('category_click');
				}*/

			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			console.log('3');
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});