function CCForm1() {
	$('.canhcam-form-1 .validator').validator().on('submit', function (e) {
		if (e.isDefaultPrevented()) {} else {
			$(this)[0].reset();
		}
	})
};



$(function () {
	CCForm1();
	$('#file1').change(function (e) {
		let fileName = e.target.files[0].name;
		$('#file1').prev().text(fileName)
	});
	$('#file2').change(function (e) {
		let fileName = e.target.files[0].name;
		$('#file2').prev().text(fileName)
	});
	$('#file3').change(function (e) {
		let fileName = e.target.files[0].name;
		$('#file3').prev().text(fileName)
	});
})

$(document).ready(function () {
	$('.dongtay-contact .canhcam-form-1 .wrap-form .form-group textarea').attr('rows', 5)

	$('.dongtay-contact .canhcam-form-1 .wrap-form .form-group.qtext input, textarea')
		.each(
			(i, e) => {
				$(e).attr('placeholder', $(e).prev().text())
			});

	$('.dongtay-contact .canhcam-form-1 .wrap-form .form-group.qdropdown select').each(
		(i, e) => {
			let selectLabel = $(e).prev().text();
			$(e).append(`<option value="${selectLabel}" disabled selected>${selectLabel}</option>`)
		}
	)

	$('.dongtay-contact .canhcam-form-1 .wrap-form .form-group.qdropdown select').on('click', () => {
		$('.dongtay-contact .canhcam-form-1 .wrap-form .form-group.qdropdown select').css('color', '#000000')
	});

	$('.dongtay-contact .canhcam-form-1 .wrap-form .form-group.qupload input[type="button"]')
		.each(
			(i, e) => {
				$(e).attr('value', `Attach file ${i + 1}`)
			});
});
