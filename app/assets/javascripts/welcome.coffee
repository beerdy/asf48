# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@welcome =
	pressUslugi: (it) ->
		content.show()

$(document).ready ->
	a = window.location.href.split '/'
	content = $('.content-navigation-line')

	action = a[3][0]+a[3][1]+a[3][2]+a[3][3]
	if menuValues[a[3]] == undefined
		content.hide()
	else if action == 'user'
		content.hide()
	else if action == 'host'
	else if action == 'cert'
		content.html '<br><a href="#specs"><span>» </span>СЕРТИФИЦИРОВАННЫЕ ПРОФЕССИОНАЛЫ</a><span> » </span>'+menuValues[a[3]]
		content.show()
	else if a[3] == undefined or a[3] == ''
		content.hide()
	else
		content.html '<br><a href="#types"><span>» </span>ВИДЫ ПРЕДОСТАВЛЯЕМОГО СЕРВИСА И УСЛУГ</a><span> » </span> '+menuValues[a[3]]
		content.show()
	
	$('.bxslider_top').bxSlider
		slideWidth: 1980,
		mode: 'fade'
	$('.slider1').bxSlider
		slideWidth: 200,
		minSlides: 2,
		maxSlides: 5,
		slideMargin: 10

$ ->	
	$(".sm_button").on "mouseover", ->
		submenutop_animate(this)
		it = $(this)
		#$('#layer3_1').stop().slideDown 'slow', ->
		#	it.children('.sm_submenu').show()
		$('#layer3_1').show()
		it.children('.sm_submenu').show()
	$(".sm_button").on "mouseleave", ->
		# $('#layer3_1').stop().slideUp 'slow'
		$('#layer3_1').hide()
		$(this).children('.sm_submenu').hide()

submenutop_animate = (it) ->
	submenutop = $(it).children('.sm_submenu')
	menutop    = $('.menutop')
	position   = menutop.offset()

	submenutop.css("top",position.top+menutop.offsetHeight)
	submenutop.css("left",position.left)
	submenutop.css("display","block")

	# Анимация
	sm_block_f = true
	sm_block_height_max = 0 
	sm_block_selector = ':first-child'
	loop
		break if $(it).hasClass('corrected')
		sm_span_c = 0
		sm_max_width = 0
		sm_block = $(it).find('div'+sm_block_selector)
		#alert 'блок: '+sm_block.text()
		if sm_block.text() == ''
			$(it).addClass('corrected')
			break
		loop
			if sm_block_f
				sm_span = sm_block.find('span').eq(sm_span_c)
			else
				sm_span = sm_block.find('span').eq(sm_span_c)
			if sm_span.text() == ''
				sm_block_height_max = submenutop_resize(it,sm_max_width,sm_block_selector,sm_span_c,sm_block_f,sm_block_height_max)
				break
			sm_span_c += 1
			sm_width = sm_span.width()
			sm_max_width = sm_width if sm_width > sm_max_width
		sm_block_selector += ' +*'
		sm_block_f = false
	submenutop.css("height","140")
	submenutop.css("display","none")
#	$('#layer3_1').css('height',sm_block_height_max) if not $(it).hasClass('corrected')

submenutop_resize = (it,max_width_sm,block_selector_sm,span_c_sm,blcok_f_sm,block_height_max_sm) ->
	padding_sm = 10
	if blcok_f_sm
		block_sm = $(it).find('div:first-child')
	else
		block_sm = $(it).find('div'+block_selector_sm)
	for i in [0...span_c_sm]
		span_sm = block_sm.find('span').eq(i)		
		span_sm.css("width",max_width_sm+padding_sm)
		span_sm.css("display","block")
		span_sm.css("float","left")
	block_height_sm = block_sm.height()
	return block_height_max_sm if block_height_sm == undefined
	return block_height_sm if block_height_sm > block_height_max_sm
	return block_height_max_sm