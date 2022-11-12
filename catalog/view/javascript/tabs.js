$.fn.tabs = function() {
	var selector = this;
	
	this.each(function() {
		var obj = $(this); 
//console.log(obj);
		$(obj.attr('href')).hide();
		
		obj.click(function() {
			$(selector).removeClass('selected');
			$(selector).parent().removeClass('selected');
			
			$(this).addClass('selected');
			$(this).parent().addClass('selected');
			
			$($(this).attr('href')).fadeIn();
			
			
			$(selector).not(this).each(function(i, element) {
				
				$($(element).attr('href')).hide();
			});
			
			return false;
		});
	});

	$(this).show();
	
	$(this).first().click();
};