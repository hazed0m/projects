$( document ).ready(function() {
	
	$('[data-toggle=offcanvas]').click(function () {
		$('.row-offcanvas').toggleClass('active');
	});
	
	$('#communications').on('click', function(){
		$(this).fadeOut();
		$('.popap, .mask').fadeIn();
	});

	$('.mask, .popap_exit').on('click', function(){
		$('.popap, .mask').fadeOut();
		$('#communications').fadeIn();
		
	});
	
	$(".category_menu").on('click', function(e) {
		var category_menu = this;
		$('.category_menu').each(function(){
			$(this).children('.category_menu_title').removeClass('cmt_active');
			$(this).children('.category_menu_pod').hide();
		});
		
		$(category_menu).children('.category_menu_title').addClass('cmt_active');
		$(category_menu).children('.category_menu_pod').show();
	});
	
	$('.category_menu .cmt_active').each(function(){
		$(this).parent().find('ul').fadeOut();
		$(this).removeClass('cmt_active');
	});
	
	$('.cmp_active').parent().prev().addClass('cmt_active');
	$('.cmp_active').parent().fadeIn();
	
	
	$(window).scroll(function() {
		if($(this).scrollTop() > 350)
			$('#toTop').fadeIn();
		else 
			$('#toTop').fadeOut();
	});
 
	$('#toTop').click(function() {
		$('body,html').animate({scrollTop:0},500);
	});
	
	
	/*menu mobile*/
	$(".telwork_btn").click(function(e) {
		if ($(".telwork").first().is(":visible"))
			hideDropdown();
		else
			showDropdown();
	});

	function showDropdown() {
		$(".telwork").slideDown(110);
		$(".telwork_btn").css('background', '#ddd');
	}

	function hideDropdown() {;
		$(".telwork").slideUp(110);
		$(".telwork_btn").css('background', '');
	}
	/*menu mobile end*/	

	/*pattern3 input*/
	var inputpatternN3 = false;
	var inputpatternE3 = false;
	var inputpatternP3 = false;
	var inputpattern_name3 = false;
	var inputpattern_email3 = false;
	var inputpattern_phone3 = false;
	$('input#name').on('keypress', function() {
		var name = this;
		setTimeout(function() {
			var res = /[^a-zA-Zа-яА-Я ]/g.exec(name.value);
			name.value = name.value.replace(res, '');
		}, 0);
	});

	$('input#phone').on('keypress', function() {
		var phone = this;
		setTimeout(function() {
			var res = /[^0-9-+]/g.exec(phone.value);
			phone.value = phone.value.replace(res, '');
		}, 0);
	});

	$('.popap .popap_forma .button').on('click', function(e){
		e.preventDefault();
		var name = $('#name').val();
		var phone = $('#phone').val();
		var crp = $('.popap_title span').text();
		
		if(name.length >= 2)
		{
			inputpatternN3 = true;
			inputpattern_name3 = true;
		}
		else{
			inputpattern_name3 = false;
			inputpatternN3 = false;
		}
		
		if(phone.length > 8)
		{
			inputpatternP3 = true;
			inputpattern_phone3 = true;
		}
		else{
			inputpattern_phone3 = false;
			inputpatternP3 = false;
		}		
		
		if(inputpatternN3 && inputpatternP3)
		{
			var callrightnow = $(this).parent().children('h2').text();

			$('.resulname3, .resultmail3, .resulphone3').hide();

			$.get("../mail.php", {name: name, phone: phone, crp: crp}, function(data){
				$('.popap > .popap_forma').fadeOut();
				$('.resultmail').empty();
				$('.resultmail').fadeIn();
				$('.resultmail').html(data);
			});
		}

		if(inputpattern_name3 === false)
			$('.resulname3').html("Имя не может быть меньше 2-х символов").fadeIn();
		else if(inputpattern_phone3 === false)
			$('.resulphone3').html("Номер телефона не может быть пустым").fadeIn();
		else
			$('.resulname3, .resultmail3, .resultmail3').html("");
	});
	
	/*pattern3 input*/
	var inputpatternE2 = false;
	var inputpattern_email2 = false;
	$('input#email').on('keypress', function() {
		var email = this;
		setTimeout(function() {
			var res = /[^a-zA-Z0-9@.]/g.exec(email.value);
			email.value = email.value.replace(res, '');
		}, 0);

		const correct = email.value.length >= 0 || (email.value.includes('@') && email.value.includes('.'));
		if(correct)
		{
			inputpattern_email2 = true;
			inputpatternE2 = true;
		}
		else{
			inputpattern_email2 = false;
			inputpatternE2 = false;
		}
	});

	$('.receive_newsletter_content .button').on('click', function(e){
		e.preventDefault();
		var email = $('#email').val();
		var crp = $('.receive_newsletter_content h2').text();		
		
		if(inputpatternE2)
		{
			var callrightnow = $(this).parent().children('h2').text();

			$('.resulemail3').hide();

			$.get("../mail.php", {email: email, crp: crp}, function(data){
				$('.receive_newsletter_content').empty();
				$('.receive_newsletter_content').html(data);
			});
		}

		if(inputpatternE2 === false)
			$('.resulemail3').html("Email указан не верно").fadeIn();
		else
			$('.resulemail3').html("");
	});


	/*pattern3 input*/
	var inputpatternN5 = false;
	var inputpatternE5 = false;
	var inputpatternP5 = false;
	var inputpattern_name5 = false;
	var inputpattern_email5 = false;
	var inputpattern_phone5 = false;
	$('input#name5').on('keypress', function() {
		var name = this;
		setTimeout(function() {
			var res = /[^a-zA-Zа-яА-Я ]/g.exec(name.value);
			name.value = name.value.replace(res, '');
		}, 0);
	});

	$('input#phone5').on('keypress', function() {
		var phone = this;
		setTimeout(function() {
			var res = /[^0-9-+]/g.exec(phone.value);
			phone.value = phone.value.replace(res, '');
		}, 0);
	});
	
	$('input#email5').on('keypress', function() {
		var email = this;
		setTimeout(function() {
			var res = /[^a-zA-Z0-9@.]/g.exec(email.value);
			email.value = email.value.replace(res, '');
		}, 0);

		const correct = email.value.length >= 0 || (email.value.includes('@') && email.value.includes('.'));
		if(correct)
		{
			inputpattern_email5 = true;
			inputpatternE5 = true;
		}
		else{
			inputpattern_email5 = false;
			inputpatternE5 = false;
		}
	});	

	$('.forma .button_contanct').on('click', function(e){
		e.preventDefault();
		var name = $('#name5').val();
		var phone = $('#phone5').val();
		var email = $('#phone5').val();
		var comment = $('#comment').val();
		var crp2 = "Контакты";
		
		if(name.length >= 2)
		{
			inputpatternN5 = true;
			inputpattern_name5 = true;
		}
		else{
			inputpattern_name5 = false;
			inputpatternN5 = false;
		}
		
		if(phone.length > 8)
		{
			inputpatternP5 = true;
			inputpattern_phone5 = true;
		}
		else{
			inputpattern_phone5 = false;
			inputpatternP5 = false;
		}		
		
		if(inputpatternN5 && inputpatternP5 && inputpatternE5)
		{
			var callrightnow = $(this).parent().children('h2').text();

			$('.name5, .phone5, .email5').hide();

			$.get("../mail.php", {name: name, phone: phone, email: email, comment: comment, crp2: crp2}, function(data){
				$('.forma').empty();
				$('.forma').html(data);
			});
		}

		if(inputpattern_name5 === false)
			$('.name5').html("Имя не может быть меньше 2-х символов").fadeIn();
		else if(inputpattern_phone5 === false)
			$('.phone5').html("Номер телефона не может быть пустым").fadeIn();
		else if(inputpattern_phone5 === false)
			$('.email5').html("Email указан не верно").fadeIn();
		else
			$('.name5, .phone5, .email5').html("");
	});
	
	/* для товаров */
	$('.quantity_plus').on('click', function(){	
		var quantity = $(this).parent().children('.quantity').val();
		quantity++;
		$(this).parent().children('.quantity').val(quantity);
		
		var price = $(this).parent().parent().children('.price_d').find('span').data('price').toString();
		var replace_price = $(this).parent().parent().children('.price_d').find('span').text().toString();
		price = price * quantity;
		replace_price = replace_price.replace(/[0-9]+/g, price);
		$(this).parent().parent().children('.price_d').find('span').empty().text(replace_price);
	});

	$('.quantity_minus').on('click', function(){
		var quantity = $(this).parent().children('.quantity').val();
		quantity--;
		if(quantity < 1)
			quantity = 1
		$(this).parent().children('.quantity').val(quantity);
		var price = $(this).parent().parent().children('.price_d').find('span').data('price').toString();
		var replace_price = $(this).parent().parent().children('.price_d').find('span').text().toString();
		price = price * quantity;
		replace_price = replace_price.replace(/[0-9]+/g, price);
		$(this).parent().parent().children('.price_d').find('span').empty().text(replace_price);		
	});
	/* для товаров конец */
	
	/* для корзины */
	$('.quantity2_plus').on('click', function(){	
		var quantity = $(this).parent().children('.quantity').val();
		quantity++;
		$(this).parent().children('.quantity').val(quantity);
		var price = $(this).parent().parent().next().children('.sum').find('.sum_count').data('price').toString();
		var replace_price = $(this).parent().parent().next().children('.sum').find('.sum_count').text().toString();
		var itog = parseInt($('.order_count').text().replace(/\D+/g,""));
		itog = itog + parseInt(price);
		$('.order_count').text(itog + ' ' + $('.order_count').data('currency'));		
		price = price * quantity;
		replace_price = replace_price.replace(/[0-9]+/g, price);
		$(this).parent().parent().next().children('.sum').find('.sum_count').text(replace_price);
	});

	$('.quantity2_minus').on('click', function(){
		var quantity = $(this).parent().children('.quantity').val();
		quantity--;
		var varb = 0;
		if(quantity < 1)
		{
			quantity = 1
			varb = 1;
		}
			
		$(this).parent().children('.quantity').val(quantity);
		var price = $(this).parent().parent().next().children('.sum').find('.sum_count').data('price').toString();
		var replace_price = $(this).parent().parent().next().children('.sum').find('.sum_count').text().toString();
		if(varb == 0)
		{
			var itog = parseInt($('.order_count').text().replace(/\D+/g,""));
			itog = itog - parseInt(price);
			$('.order_count').text(itog + ' ' + $('.order_count').data('currency'));			
		}
		
		price = price * quantity;
		replace_price = replace_price.replace(/[0-9]+/g, price);
		$(this).parent().parent().next().children('.sum').find('.sum_count').text(replace_price);		
	});	
	/* для корзины конец */
	
	$('#price_button').on('click', function(e){
		var object = new Object(JSON.parse(localStorage.getItem('basket')));
		
		var object_arr = [];
		
		$('#formCart #unique_items').val($(this).parent().parent().parent().parent().parent().children('#info_1').find('.nbr_forma_block_1').find('#maintext').val());
		
		object_arr.push($('#unique_items').val());	
		object_arr.push('<b>Имя товара:</b> ' + $(this).parent().parent().find('#name-item').text());	
		object_arr.push('<b>Кол:</b> ' + $(this).parent().children('.sum_quantity').find('.quantity').val());	
		object_arr.push($(this).parent().children('.price_d').find('span').text());	
				
		
		if(typeof object[0] === 'undefined')
		{
			object[0] = object_arr;
		}
		else
		{
			object[Object.size(object)+1] = object_arr;	
		}
		localStorage.setItem('basket', JSON.stringify(object));
	});
	
	Object.size = function(obj) {
		var size = -1, key;
		for (key in obj) {
			if (obj.hasOwnProperty(key)) size++;
		}
		return size;
	};
	
	$('#basket-order').on('click', function(e){
		var object = new Object();
		
		var roows_getp = $('#shopCart .roows');
		$($(roows_getp).get().reverse()).each(function(index){
			var object_arr = [];
			object_arr.push($(this).find('#addit_data').val());
			object_arr.push('<b>Имя товара:</b> ' + $(this).find('.discounted_title').children('h2').text());
			object_arr.push('<b>Кол:</b> ' + $(this).find('.tovar').find('.quantity').val());
			object_arr.push('<b>Цена:</b> ' + $(this).find('.tovar').find('.sum_count').text());
			object[index] = object_arr;
			object_arr = null;
		});
		
		localStorage.clear();
		localStorage.setItem('basket', JSON.stringify(object));
	});
	
	$('#order-submit').on('click', function(e){
		var object = new Object(JSON.parse(localStorage.getItem('basket')));
		object = JSON.stringify(object);
		
		var object2 = new Object();
		var object_arr = [];
		object_arr.push("<b>Имя:</b> " + $('#shopOrderForm').children('input[name=name]').val());
		object_arr.push("<b>E-mail:</b> " + $('#shopOrderForm').children('input[name=email]').val());
		object_arr.push("<b>Номер телефона:</b> " + $('#shopOrderForm').children('input[name=phone]').val());
		object_arr.push("<b>Комментарий:</b> " + $('#shopOrderForm').children('textarea[name=message]').val());
		object2[0] = object_arr;
		object2 = JSON.stringify(object2);
		
		if($('#shopOrderForm').children('input[name=name]').val().length > 0 && $('#shopOrderForm').children('input[name=email]').val().length > 0 && $('#shopOrderForm').children('input[name=phone]').val().length > 0)
		{
			$.ajax({
				type: "GET",
				data: "object="+object+"&object2="+object2,
				url: '../mail.php',
				contentType: "application/json; charset=utf-8",
				success: function(msg){
					console.log(msg);
				}
			});
			localStorage.clear();
		}
	});
	
	$('.delete_discounted').on('click',function(e){
		var id = $(this).parent().parent().next().val();
		
		var object = new Object(JSON.parse(localStorage.getItem('basket')));
		for(var index in object) 
			if(object[index][0] == id)
				delete object[index];
		
		localStorage.clear();
		localStorage.setItem('basket', JSON.stringify(object));		
		
	});
	
	$('#news_galeria_carousel').owlCarousel({
		loop:true,
		margin:10,
		nav:true,
		dots: true,
		items:1
	});

	$('#discounted_carousel').owlCarousel({
		loop:true,
		margin:10,
		nav:true,
		dots: false,
		items:3
	});

	$('#discounted_goods_carousel').owlCarousel({
		loop:true,
		margin:10,
		nav:true,
		dots: true,
		responsive:{
			320:{
				items:1
			},
			768:{
				items:4
			},
			1024:{
				items:4
			}
		}
	});
	
    $(".fancybox").fancybox({
    	openEffect	: 'elastic',
    	closeEffect	: 'elastic',

    	helpers : {
    		title : {
    			type : 'inside'
    		}
    	}
    });	
});

$(window).on('load', function(){
	var roows_getp = $('#shopCart .roows');
	if(roows_getp.length > 0)
	{
		var object = JSON.parse(localStorage.getItem('basket'));
		
		
		$($(roows_getp).get().reverse()).each(function(index){
			$(this).find('.tovar').find('.quantity').val(object[index][2].replace(/\D+/g, ''));
			$(this).find('.tovar').find('.sum_count').text(object[index][3].replace(/\D+/g,"") + ' ' + $(this).find('.tovar').find('.sum_count').data('currency'));
		});
		
		var itog = 0;
		
		for(var index in object) 
			itog = itog + parseInt(object[index][3].replace(/\D+/g, ''));
		$('.order_count').text(itog + ' ' + $('.order_count').data('currency'));		
	}
});


















