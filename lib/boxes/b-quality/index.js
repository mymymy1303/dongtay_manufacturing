$(document).ready(function () {
	$('.quality-box .owl-carousel').owlCarousel({
		loop:true,
		margin:120,
		autoWidth:false,
		items:1,
		dots:false,
		autoWidth: true,
		center: true,
		responsive:{
			0:{
				items:1,
				dots:false
			},
			768:{
				margin:200,
				items:3,
				dots:false,
				center: false
			},
			992:{
				margin:160,
				items:4,
				dost:false,
				center: false
			},
			1200:{
				items:5,
				margin:170,
				loop:false,
				dots:false,
				center: false
			}
		}
	})
});