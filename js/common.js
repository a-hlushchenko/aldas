//menu modbile
document.addEventListener('DOMContentLoaded', function () {
	/************************
	*************************
		Mobile Menu v1.0
		(c) 2015 George Lieu
		licensed under MIT
	************************
	************************/
	!function (s) { "use strict"; s.fn.mobileMenu = function (e) { var i = { MenuWidth: 250, SlideSpeed: 300, WindowsMaxWidth: 767, PagePush: !0, FromLeft: !0, Overlay: !0, CollapseMenu: !0, ClassName: "mobile-menu" }; return this.each(function () { function n() { 1 == d.FromLeft ? c.css("left", -d.MenuWidth) : c.css("right", -d.MenuWidth), c.find("ul:first").addClass(d.ClassName), g = d.ClassName, c.css("width", d.MenuWidth), c.find("." + g + " ul").css("display", "none"); var e = '<span class="expand icon-plus"></span>'; c.find("li ul").parent().prepend(e), s("." + g).append('<li style="height: 30px;"></li>'), s("." + g + " li:has(span)").each(function () { s(this).find("a:first").css("padding-right", 55) }) } function a() { var e = 0, i = s(document).height(); return c.find("." + g + " > li").each(function () { var i = s(this).height(); e += i }), i >= e && (e = i), e } function l(e) { C = s("." + g + " span.expand").height(), 1 === e && c.find("." + g + " > li:has(span)").each(function () { var e = s(this).height(), i = (e - C) / 2; s(this).find("span").css({ "padding-bottom": i, "padding-top": i }) }), 2 === e && c.find("." + g + " > li > ul > li:has(span)").each(function () { var e = s(this).height(), i = (e - C) / 2; s(this).find("span").css({ "padding-bottom": i, "padding-top": i }) }) } function t() { u.addClass("mmPushBody"), 1 == d.Overlay ? h.addClass("overlaymenu") : h.addClass("overlaymenu").css("opacity", 0), c.css({ display: "block", overflow: "hidden" }), 1 == d.FromLeft ? (1 == d.PagePush && p.animate({ left: d.MenuWidth }, d.SlideSpeed, "linear"), c.animate({ left: "0" }, d.SlideSpeed, "linear", function () { c.css("height", a()), r = !0 })) : (1 == d.PagePush && p.animate({ left: -d.MenuWidth }, d.SlideSpeed, "linear"), c.animate({ right: "0" }, d.SlideSpeed, "linear", function () { c.css("height", a()), r = !0 })), m || (l(1), m = !0) } function o() { 1 == d.FromLeft ? (1 == d.PagePush && p.animate({ left: "0" }, d.SlideSpeed, "linear"), c.animate({ left: -d.MenuWidth }, d.SlideSpeed, "linear", function () { u.removeClass("mmPushBody"), h.css("height", 0).removeClass("overlaymenu"), c.css("display", "none"), r = !1 })) : (1 == d.PagePush && p.animate({ left: "0" }, d.SlideSpeed, "linear"), c.animate({ right: -d.MenuWidth }, d.SlideSpeed, "linear", function () { u.removeClass("mmPushBody"), h.css("height", 0).removeClass("overlaymenu"), c.css("display", "none"), r = !1 })) } var d = s.extend({}, i, e), c = s(this), h = s("#overlay"), u = s("body"), p = s("#page"), r = !1, m = !1, f = !1, C = 0, g = ""; n(), s(".mm-toggle").click(function () { c.css("height", s(document).height()), 1 == d.Overlay && h.css("height", s(document).height()), r ? o() : t() }), s(window).resize(function () { s(window).width() >= d.WindowsMaxWidth && r && c.css("left") != -d.MenuWidth && o() }), s("." + g + " > li > span.expand").click(function () { if (1 == d.CollapseMenu) { var e = s("." + g + " li span"); e.hasClass("open") && "none" === s(this).next().next().css("display") && (s("." + g + " li ul").slideUp(), e.hasClass("open") ? e.removeClass("icon-minus").addClass("icon-plus") : e.removeClass("icon-plus").addClass("icon-minus"), e.removeClass("open")) } s(this).nextAll("." + g + " ul").slideToggle(function () { 1 == d.CollapseMenu ? s(this).promise().done(function () { c.css("height", a()) }) : c.css("height", a()) }), s(this).hasClass("icon-plus") ? s(this).removeClass("icon-plus").addClass("icon-minus") : s(this).removeClass("icon-minus").addClass("icon-plus"), s(this).toggleClass("open"), f || (l(2), f = !0) }), s("." + g + " > li > ul > li > span.expand").click(function () { if (1 == d.CollapseMenu) { var e = s("." + g + " li ul li span"); e.hasClass("open") && "none" === s(this).next().next().css("display") && (s("." + g + " li ul ul").slideUp(), e.hasClass("open") ? e.removeClass("icon-minus").addClass("icon-plus") : e.removeClass("icon-plus").addClass("icon-minus"), e.removeClass("open")) } s(this).nextAll("." + g + " ul ul").slideToggle(function () { 1 == d.CollapseMenu ? s(this).promise().done(function () { c.css("height", a()) }) : c.css("height", a()) }), s(this).hasClass("icon-plus") ? s(this).removeClass("icon-plus").addClass("icon-minus") : s(this).removeClass("icon-minus").addClass("icon-plus"), s(this).toggleClass("open") }), s("." + g + " li a").click(function () { s("." + g + " li a").removeClass("active"), s(this).addClass("active"), o() }), h.click(function () { o() }), s("." + g + " li a.active").parent().children(".expand").removeClass("icon-plus").addClass("icon-minus open"), s("." + g + " li a.active").parent().children("ul").css("display", "block") }) } }(jQuery);

	jQuery(document).ready(function ($) {
		$("#mobile-menu").mobileMenu({
			MenuWidth: 260,
			SlideSpeed: 300,
			WindowsMaxWidth: 767,
			PagePush: false,
			FromLeft: true,
			Overlay: true,
			CollapseMenu: true,
			ClassName: "mobile-menu"
		});
	});

});
//menu desktop
document.addEventListener('DOMContentLoaded', function () {
	$('.main_menu .kitchen').on('click', function () {
		if ($(this).hasClass('active')) {
			$(this).removeClass('active');
			$('body').removeClass('active_menu');
		} else {
			$(this).addClass('active');
			$('body').addClass('active_menu');
		}
		return false;
	});
	$('.menu_close').on('click', function () {
		$('.main_menu .kitchen').removeClass('active');
		$('body').removeClass('active_menu');
		return false;
	});

	$(document).mouseup(function (e) {
		if ($('body').hasClass('active_menu')) {
			var container = $(".menu_item_el");
			if (container.has(e.target).length === 0) {
				//container.hide();
				$('.main_menu .kitchen').removeClass('active');
				$('body').removeClass('active_menu');
			}
		}

		if ($('[data-modal]').hasClass('active')) {
			$(this).removeClass('active');
			$('#' + $(this).attr('href')).removeClass('active');
		}
	});

	$('[data-modal]').on('click', function (event) {
		console.log('ok');
		event.preventDefault();
		$('body').addClass('active_form');
		$(this).addClass('active');
		console.log($(this).attr('href'));
		$($(this).attr('href')).addClass('active');
	});
	$(document).on('click', '.form_close, .form_close_btn', function (event) {
		event.preventDefault();
		$('.container_form').removeClass('active');
		$($(this).attr('href')).removeClass('active');
		$('body').removeClass('active_form');
		return false;
	});


});

document.addEventListener('DOMContentLoaded', function () {
	$('#online_calc [data-next]').on('click', function () {
		//$('#online_calc .step').hidden();
		$('#online_calc .step').removeClass('active');

		next_step = $(this).data('next');
		if (next_step == 'finish') {


			// ajax
			$('.container_form').removeClass('active');
			$('#success').addClass('active');
			$('#online_calc .step1').addClass('active');
			$('.online_pgrogress_step').html('1/4');

		} else {
			$('.step' + next_step).addClass('active');
			$('.online_pgrogress_step').html(next_step + '/4');

			progress = $('.step' + next_step).data('progress');
			$('.online_pgrogress_line span').css('width', progress + '%');
		}
	});
});

document.addEventListener('DOMContentLoaded', function () {
	$.fn.tabs = function () {
		var selector = this;
		this.each(function () {
			var obj = $(this);
			$(obj.attr('href')).hide();
			obj.click(function () {
				$(selector).removeClass('selected');
				$(this).addClass('selected');
				$($(this).attr('href')).fadeIn();
				$(selector).not(this).each(function (i, element) {
					$($(element).attr('href')).hide();
				});
				return false;
			});
		});
		$(this).show();
		$(this).first().click();
	};
	if (document.querySelector(".tab_buttons") !== null) {
		$('.tab_buttons a').tabs();
	}
});

var options = {
	onComplete: function (cep) {
		//alert('CEP Completed!:' + cep);
	},
	onKeyPress: function (cep, event, currentField, options) {
		//console.log('A key was pressed!:', cep, ' event: ', event, 'currentField: ', currentField, ' options: ', options);
	},
	onChange: function (cep) {
		//console.log('cep changed! ', cep);
	},
	onInvalid: function (val, e, f, invalid, options) {
		var error = invalid[0];
		console.log("Digit: ", error.v, " is invalid for the position: ", error.p, ". We expect something like: ", error.e);
	}
};

document.addEventListener('DOMContentLoaded', function () {
	$("input[type='tel']").mask("+7(999) 999-9999", options);

	var els = document.querySelectorAll(".nice-select");
	els.forEach(function (select) {
		NiceSelect.bind(select);
	});
	// seachable
	/*var options = {searchable: true};
	NiceSelect.bind(document.getElementById("seachable-select"), options); */
});
/*! Lazy Load 1.9.3 - MIT license - Copyright 2010-2013 Mika Tuupola */
!function (a, b, c, d) { var e = a(b); a.fn.lazyload = function (f) { function g() { var b = 0; i.each(function () { var c = a(this); if (!j.skip_invisible || c.is(":visible")) if (a.abovethetop(this, j) || a.leftofbegin(this, j)); else if (a.belowthefold(this, j) || a.rightoffold(this, j)) { if (++b > j.failure_limit) return !1 } else c.trigger("appear"), b = 0 }) } var h, i = this, j = { threshold: 0, failure_limit: 0, event: "scroll", effect: "show", container: b, data_attribute: "original", skip_invisible: !0, appear: null, load: null, placeholder: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" }; return f && (d !== f.failurelimit && (f.failure_limit = f.failurelimit, delete f.failurelimit), d !== f.effectspeed && (f.effect_speed = f.effectspeed, delete f.effectspeed), a.extend(j, f)), h = j.container === d || j.container === b ? e : a(j.container), 0 === j.event.indexOf("scroll") && h.bind(j.event, function () { return g() }), this.each(function () { var b = this, c = a(b); b.loaded = !1, (c.attr("src") === d || c.attr("src") === !1) && c.is("img") && c.attr("src", j.placeholder), c.one("appear", function () { if (!this.loaded) { if (j.appear) { var d = i.length; j.appear.call(b, d, j) } a("<img />").bind("load", function () { var d = c.attr("data-" + j.data_attribute); c.hide(), c.is("img") ? c.attr("src", d) : c.css("background-image", "url('" + d + "')"), c[j.effect](j.effect_speed), b.loaded = !0; var e = a.grep(i, function (a) { return !a.loaded }); if (i = a(e), j.load) { var f = i.length; j.load.call(b, f, j) } }).attr("src", c.attr("data-" + j.data_attribute)) } }), 0 !== j.event.indexOf("scroll") && c.bind(j.event, function () { b.loaded || c.trigger("appear") }) }), e.bind("resize", function () { g() }), /(?:iphone|ipod|ipad).*os 5/gi.test(navigator.appVersion) && e.bind("pageshow", function (b) { b.originalEvent && b.originalEvent.persisted && i.each(function () { a(this).trigger("appear") }) }), a(c).ready(function () { g() }), this }, a.belowthefold = function (c, f) { var g; return g = f.container === d || f.container === b ? (b.innerHeight ? b.innerHeight : e.height()) + e.scrollTop() : a(f.container).offset().top + a(f.container).height(), g <= a(c).offset().top - f.threshold }, a.rightoffold = function (c, f) { var g; return g = f.container === d || f.container === b ? e.width() + e.scrollLeft() : a(f.container).offset().left + a(f.container).width(), g <= a(c).offset().left - f.threshold }, a.abovethetop = function (c, f) { var g; return g = f.container === d || f.container === b ? e.scrollTop() : a(f.container).offset().top, g >= a(c).offset().top + f.threshold + a(c).height() }, a.leftofbegin = function (c, f) { var g; return g = f.container === d || f.container === b ? e.scrollLeft() : a(f.container).offset().left, g >= a(c).offset().left + f.threshold + a(c).width() }, a.inviewport = function (b, c) { return !(a.rightoffold(b, c) || a.leftofbegin(b, c) || a.belowthefold(b, c) || a.abovethetop(b, c)) }, a.extend(a.expr[":"], { "below-the-fold": function (b) { return a.belowthefold(b, { threshold: 0 }) }, "above-the-top": function (b) { return !a.belowthefold(b, { threshold: 0 }) }, "right-of-screen": function (b) { return a.rightoffold(b, { threshold: 0 }) }, "left-of-screen": function (b) { return !a.rightoffold(b, { threshold: 0 }) }, "in-viewport": function (b) { return a.inviewport(b, { threshold: 0 }) }, "above-the-fold": function (b) { return !a.belowthefold(b, { threshold: 0 }) }, "right-of-fold": function (b) { return a.rightoffold(b, { threshold: 0 }) }, "left-of-fold": function (b) { return !a.rightoffold(b, { threshold: 0 }) } }) }(jQuery, window, document);

$(document).ready(function () {
	$("img[data-original]").lazyload({
		threshold: 500,
		effect: "fadeIn"
	});
});



block_button = false;

$("#pred_zakaz").on('submit', function (event) {
	if (block_button) return false;
	var node = this;
	event.preventDefault();

	name = $('#pred_zakaz input[name="name"]').val();
	tel = $('#pred_zakaz input[name="tel"]').val();
	email = $('#pred_zakaz input[name="email"]').val();
	callto = $('#pred_zakaz input[name="callto"]:checked').val();
	console.log(callto);
	comment = $('#pred_zakaz textarea').val();

	$('#pred_zakaz input, #pred_zakaz textarea').attr('disabled', true);

	f = $('#pred_zakaz .form_left').html();
	f += '<br/>Ответить на: ' + callto;
	f += '<br/>Имя: ' + name;
	f += '<br/>Телефон: ' + tel;
	f += '<br/>E-mail: ' + email;
	f += '<br/>Комментарий: ' + comment;

	$.ajax({
		url: 'index.php?route=information/callback/send4_n',
		type: 'post',
		data: 'text=' + f,
		dataType: 'json',
		beforeSend: function () {
			//$(node).button('loading');
			block_button = true;
		},
		complete: function () {
			//$(node).button('reset');
			block_button = false;
			$('#pred_zakaz input, #pred_zakaz textarea').attr('disabled', false);
		},
		success: function (json) {
			//console.log(json);
			$('#pred_zakaz .send').before('<div>' + json['success'] + '</div>');
			$('#pred_zakaz .send').remove();
		},
		error: function (xhr, ajaxOptions, thrownError) {
			block_button = false;
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	}); //ajax

});

function to_tel(e) {

	$(e).closest('.form').find('.to_tel').show().prop('required', true);
	$(e).closest('.form').find('.to_email').hide().prop('required', false)
}

function to_email(e) {

	$(e).closest('.form').find('.to_tel').hide().prop('required', false);
	$(e).closest('.form').find('.to_email').show().prop('required', true);
}

block_button = false;

$(".send_n").on('submit', function (event) {
	var node = this;
	if (block_button) return false;

	event.preventDefault();

	data = $(this).serialize();

	if ($(this).hasClass('call_raschet')) {
		data1 = $("#online_calc input, #online_calc textarea, #online_calc file").serialize();
		data = data + '&' + data1;
	}

	//console.log(data);
	$.ajax({
		url: 'index.php?route=information/callback/send_n',
		type: 'post',
		data: data,
		dataType: 'json',
		beforeSend: function () {
			block_button = true;
		},
		complete: function () {
			block_button = false;
		},
		success: function (json) {
			console.log(json);
			if (json['success']) {
				console.log($(node).find('.send_calc'));
				if (json['send_calc']) {
					
					$(node).find('.send_calc').click();
					console.log(json);
				} else {
					console.log('2');
					//console.log(node);
					$(node).find('input[type="submit"]').after(json['success']);
					$(node).find('input[type="submit"]').remove();
				}
			} else {
				console.log('error');
				console.log(json);
			}
		},
		error: function (xhr, ajaxOptions, thrownError) {
			block_button = false;
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	}); //ajax

});


// калькулятор
//console.log('1');
$('#online_calc input[name="dlina"], #online_calc input[name="mater"], #online_calc input[name="kompl"], #online_calc input[name="furnit"]').keyup(function (eventObject) {
	calc();
});

var price = 3000;
var sum = 0;

function calc() {
	console.log('calc');
	var kef1 = parseFloat($('#online_calc input[name="mater"]:checked').data('kef'));
	var kef2 = parseFloat($('#online_calc input[name="kompl"]:checked').data('price'));
	var kef3 = parseFloat($('#online_calc input[name="furnit"]:checked').data('price'));

	lenght = parseFloat($('input[name="dlina"]').val().replace(",", "."));
	if (!lenght) {
		lenght = 0;
	}

	if (kef1 > 0) { } else {
		$('.finish_calc_result span').html('Укажите материал фасада!');
		return false;
	}
	sum = (price * kef1 + kef2 + kef3) * (lenght / 100);
	var oldSum = sum * 1.3;
	var newSum = oldSum * 0.8;


	$('.finish_calc_result span').fadeOut('slow', function () {
		$('.finish_calc_result span').html(newSum.toFixed() + ' р.' + ' <span class="old-project-price">' + oldSum.toFixed() + ' р.</span>');
		$('.finish_calc_result span').fadeIn('slow');
	});
	$('#pricetotal').attr('value', newSum.toFixed() + ' р.');
}
calc();

$('.buttonfile').on('click', function () {
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
					//$(node).button('loading');
					$('.text-danger, .text-success').remove();
				},
				complete: function () {
					//$(node).button('reset');
				},
				success: function (json) {
					$('.text-danger').remove();
					console.log(json);
					if (json['error']) {
						//$(node).parent().parent().find('#'+$(node).attr('id')).after('<div class="text-danger">' + json['error'] + '</div>');
						// $(node).parent().parent().find('input[name="namefile"]').after('<div class="text-danger">' + json['error'] + '</div>');
						$(node).after('<div class="text-danger">' + json['success'] + '</div>');
					}

					if (json['success']) {
						//alert(json['success']);
						//$(node).parent().parent().find('input[name="namefile"]').after('<div class="text-success">' + json['success'] + '</div>');
						$(node).next().append('<div class="text-success">' + json['success'] + '</div>');

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