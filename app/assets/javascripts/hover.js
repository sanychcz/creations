$(function(){
	$('.main-image').hover(function() {
		$(this).attr('src', $(this).attr('src').replace( /_off/i, '_on' ));
	}, function() {
		$(this).attr('src', $(this).attr('src').replace( /_on/i, '_off' ));
	});
});
