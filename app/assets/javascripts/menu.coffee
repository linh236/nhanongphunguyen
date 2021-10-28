$(document).ready ->
	$(window).on 'scroll', ->
		if $(window).scrollTop() > 30 
			$("#navbar").css({'top': '0px', 'position': 'fixed'})
		else 
			$("#navbar").css({'top': '-60px', 'position': 'initial'})
	$('.menu-avata, .arrow-right').click -> 
		$('.bar-setting').animate({'width': 'toggle'});