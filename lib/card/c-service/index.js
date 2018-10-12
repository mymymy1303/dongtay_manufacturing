$(document).ready(function () {
	const breadcrumb_title = $('.canhcam-breadcrumb-1 .main-breadcrumb .breadcrumb li:last a span').text();
	$('#we-title').text(breadcrumb_title);
	
	$('.canhcam-tabs-service-ct').parent().parent().parent().removeClass('col-12').removeClass('col-lg-8').removeClass('col-xl-9')

	$('.canhcam-card-service .side-panel').css(
		'flex', '0 0 calc(100% - 30px)'
	);
});