$(document).on 'turbolinks:load', ->
	$(window).on 'scroll', ->
		if $(window).scrollTop() > 30 
			$("#navbar").css({'top': '0px', 'position': 'fixed'})
		else 
			$("#navbar").css({'top': '-60px', 'position': 'initial'})
	$('.menu-avata, .arrow-right').click -> 
		$('.bar-setting').animate({'width': 'toggle'});
	
	$('.item-post').click ->
		id = $(this).data('id');
		if id == ''
			window.location.href = "/users/sign_in";
	
	$array_path = ['/', '/rooms',]
	$array_menu = ['home', 'rooms']
	$pathname = $(location).attr('pathname')
	$a = $array_path.indexOf($pathname)
	$(".item-menu-#{$array_menu[$a]}").addClass('active')

