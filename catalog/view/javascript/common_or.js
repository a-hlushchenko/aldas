function getURLVar(key) {
	var value = [];

	var query = String(document.location).split('?');

	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');

			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}

		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
}

//$(document).ready(function() {

	// Highlight any found errors
	$('.text-danger').each(function() {
		var element = $(this).parent().parent();

		if (element.hasClass('form-group')) {
			element.addClass('has-error');
		}
	});

	/* Search */
	$('#search-form1 .search1').on('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
		var value = $('#search-form1 input[name=\'search\']').val();
		if (value) {
			url += '&search=' + encodeURIComponent(value);
		}
		location = url;
	});
	$('#search-form1 input[name=\'search\']').on('keydown', function(e) {
		if (e.keyCode == 13) {
			$('#search-form1 .search1').trigger('click');
		}
	});

	// Menu
	$('#menu .dropdown-menu').each(function() {
		var menu = $('#menu').offset();
		/*var dropdown = $(this).parent().offset();
		var i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#menu').outerWidth());
		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 5) + 'px');
		}*/
		$(this).find('.v').css('margin-left', ($(this).parent().outerWidth()/2-8) + 'px');
		//console.log($(this).parent().outerWidth());
	});

	// tooltips on hover
	//$('[data-toggle=\'tooltip\']').tooltip({container: 'body',trigger: 'hover'});

	// Makes tooltips work on ajax generated content
	$(document).ajaxStop(function() {
		$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
	});
//});
