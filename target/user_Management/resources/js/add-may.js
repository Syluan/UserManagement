$().ready(function() {

	$.validator.addMethod(
		"regex",
		function(value, element, regexp) {
			var check = false;
			return this.optional(element) || regexp.test(value);
		},
		"Please check your input."
	);
	
	$("#form_create_May").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"maMay": {
				required: true,
				regex : /^M[0-9]{3}$/,

			}
		},
		messages: {
			"maMay": {
				required: "Không được để trống mã máy",
				regex: 'đúng định dạng',
			}
		}
	});
});
