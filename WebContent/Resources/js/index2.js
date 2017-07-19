(function() {
	$(function() {
		$('#close_popup').click(function() {
			return $('#popup').css('display', 'none');
		});
		$('#popup img').click(function() {
			return window.location.href = '/reservation/';
		});
		$('#carousel').carousel();
		$('.feature').matchHeight();
		$('.extra').matchHeight();
		$('#comments').mouseenter(function() {
			return $('#comments .carousel-control').removeClass('inactive');
		});
		$('#comments').mouseleave(function() {
			return $('#comments .carousel-control').addClass('inactive');
		});
		$('.feature').mouseenter(
				function() {
					$('.blinder').addClass('inactive');
					return $(this).children('div').children('.blinder')
							.removeClass('inactive');
				});
		return $('.feature').mouseleave(function() {
			return $('.blinder').addClass('inactive');
		});
	});
}).call(this);