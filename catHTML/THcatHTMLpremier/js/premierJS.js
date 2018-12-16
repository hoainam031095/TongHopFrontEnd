
		$(document).ready(function(){
			$.validator.addMethod("check",function(value, element,regex) {
		            //return this.optional(element) || regex.test(value);
		            //or
		            return regex.test(value);
		        }
			);
			$(".personal-form").validate({
				rules:{
					name:{
						required: true,
						minlength:2
					},
					email:{
						required: true,
						minlength:11,
						check:/[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}/igm,
					},
					phone:{
						required: true,
						minlength:10,
						check:/^\+?\d{1,3}?[- .]?\(?(?:\d{2,3})\)?[- .]?\d\d\d[- .]?\d\d\d\d$/,
					},
					mobile:{
						required: true,
						minlength:10
					},
					addressone:{
						required: true,
						minlength:5
					},
					addresstwo:{
						required: true,
						minlength:5
					},
					post:{
						required: true,
						minlength:2
					},
				},
				messages:{
						name:{
		                    required: "Vui lòng nhập tên",
		                    minlength: "Tên quá ngắn mời nhập lại"
		                },
		                email:{
							required: "Vui lòng nhập mail",
		                    minlength: "Email quá ngắn mời nhập lại",
		                    check:"Email khôg hợp lệ"
						},
						phone:{
							required: "Vui lòng nhập phone",
		                    minlength: "Phone quá ngắn mời nhập lại",
		                    check:"Phone không hợp lệ"
						},
						mobile:{
							required: "Vui lòng nhập mobile",
		                    minlength: "Mobile quá ngắn mời nhập lại"
						},
						addressone:{
							required: "Vui lòng nhập addressone",
		                    minlength: "Addressone quá ngắn mời nhập lại"
						},
						addresstwo:{
							required: "Vui lòng nhập addresstwo",
		                    minlength: "Adresstwo quá ngắn mời nhập lại"
						},
						post:{
							required: "Vui lòng nhập post",
		                    minlength: "Post quá ngắn mời nhập lại"
						},
		            },
			});

			$(".event-submit").click(function(){
				$(".personal-form").submit();
			});
		});