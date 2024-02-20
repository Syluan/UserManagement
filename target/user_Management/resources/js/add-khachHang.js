$().ready(function() {

	$.validator.addMethod(
		"regex",
		function(value, element, regexp) {
			var check = false;
			return this.optional(element) || regexp.test(value);
		},
		"Please check your input."
	);
	
	$("#formKh").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"soDienThoai": {
				required: true,
				regex : /^(?:\+84|0)(90|91)\d{7}$/,
			},
			"diaChiEmail": {
				required: true,
				regex : /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/,
			}
		},
		messages: {
			"soDienThoai": {
				required: "Không được để trống sdt",
				regex: 'Nhập đúng định dạng',
			},
			"diaChiEmail": {
				required: "Không được để trống Email",
				regex: 'Nhập đúng định dạng',
			}
		}
	});
	$("#formSDDV").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"soLuong": {
				required: true,
				regex : /^[1-9]\d*$/,
			},
			"suDungDichVuID.ngaySuDung": {
				required: true,
				currentDate: true,
			}
		},
		messages: {
			"soLuong": {
				required: "Không được để trống sdt",
				regex: 'Phải là số nguyên dương',
			},
			 "suDungDichVuID.ngaySuDung": {
				required: "Không được để trống sdt",
				currentDate: 'Ngày sử dụng phải là ngày hiện tại',
			}
		},
		  rules: {
        currentDate: function (element) {
            var selectedDate = new Date($(element).val());
            var currentDate = new Date();
            return selectedDate.setHours(0, 0, 0, 0) === currentDate.setHours(0, 0, 0, 0);
        }
    }
	});
});
