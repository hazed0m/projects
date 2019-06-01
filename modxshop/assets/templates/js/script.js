$(document).ready(function(){
	$('.slick-slider').slick({
		centerMode: true,
	  	centerPadding: '10%',
	  	slidesToShow: 1,
	  	dots:true,
	  	infinite:true,
	  	arrows:true
  	});
	$('#header .cart, #header .compare, #header .search').on('click',function(){	
	console.log($(this).next());
		if($(this).next().is(':visible'))
		{
			$(this).next().fadeOut();
			$('.mask-wrap').fadeOut();
		}
		else
		{
			$(this).next().fadeIn();
			$('.mask-wrap').fadeIn();
		}
	});	
	$('.mask-wrap, #close-window').on('click', function(){
			$('#header .rbcont').fadeOut();
			$('.mask-wrap').fadeOut();
	});
	$('.qbuttonminus').on('click', function(){
		var col = $(this).parent().find('input').attr('onchange').slice(16,17);
		var temp = parseInt($(this).parent().find('input').val());
		if($(this).parent().find('input').val() != 0)
		{
			$(this).parent().find('input').val(temp-1);
		}
		ChangeQuantity(col, $(this).parent().find('input').val());				
	});
	$('.qbuttonplus').on('click', function(){
		var col = $(this).parent().find('input').attr('onchange').slice(16,17);
		var temp = parseInt($(this).parent().find('input').val());
		$(this).parent().find('input').val(temp+1);
		ChangeQuantity(col, $(this).parent().find('input').val());
	});
	$('#header .menu').on('click',function(){
		console.log($(this).parent().parent().find('.rbox'));
		if($(this).parent().find('ul').is(':visible'))
		{
			$(this).parent().find('ul').fadeOut();
			$(this).parent().parent().find('.rbox').each(function(){
				$(this).fadeOut(400);
			});
		}
		else
		{
			$(this).parent().find('ul').fadeIn().css('display','flex');
			$(this).parent().parent().find('.rbox').each(function(){
				$(this).delay(200).fadeIn(400);
			});
		}
	});
	$('#topmenu ul li a').on('click',function(){
		var href = this.href;
        $('#topmenu ul').animate({
            opacity: 0
        }, 500, function(){
            // тут переходим на нужную страницу
            window.location = href;
        });
        event.preventDefault();
    }); 
	window.onscroll = function() {myFunction()};

	// Get the header
	var header = document.getElementById("header");

	// Get the offset position of the navbar
	var sticky = header.offsetTop;

	// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
	function myFunction() {
	  if (window.pageYOffset > sticky) {
	    header.classList.add("sticky");
	  } else {
	    header.classList.remove("sticky");
	  }
	}
});