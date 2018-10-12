$(document).ready(function(){
	$('.facilities-slider .slider-fac').slick({
		centerMode: false,
		arrows: false,
		centerPadding: "-40px"
	});

	$('.facilities-slider .slider-nav').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		asNavFor: '.slider-fac',
		dots: false,
		centerMode: false,
		focusOnSelect: true,
		vertical: false,
		verticalSwiping: false,
		mobileFirst:true,
		arrows: false,
		responsive: [
			{
			  breakpoint: 576,
			  settings: {
				vertical: true,
				verticalSwiping: true,
				arrows:true
			  }
			}
		]
	  });
  });