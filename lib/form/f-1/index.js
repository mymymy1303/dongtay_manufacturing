function CCForm1() {
	$('.canhcam-form-1 .validator').validator().on('submit', function (e) {
		if (e.isDefaultPrevented()) {
		} else {
			$(this)[0].reset();
		}
	})
};



$(function() {
	CCForm1();
	$('#file1'). change(function(e){
		var fileName = e. target. files[0]. name;
		$('#file1').prev().text(fileName)
	});
	$('#file2'). change(function(e){
		var fileName = e. target. files[0]. name;
		$('#file2').prev().text(fileName)
	});
	$('#file3'). change(function(e){
		var fileName = e. target. files[0]. name;
		$('#file3').prev().text(fileName)
	});
})


$(window).resize(function() {
	const width_input = $('.file-upload').outerWidth()
	$('.file-trigger').css('width',width_input)
})
