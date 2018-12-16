$(document).ready(function(){
	// =====================SLIDE SHOW=================================================================================
		  $('.testimonialbx-text').bxSlider(
		  	{
		  		//pager:false,
		  		touchEnabled:true,
		  		auto:true,
		  		controls: false,
			  });
		  $('.gallerybx').bxSlider({
		 	 	touchEnabled:true,
		  		auto:true,
		  		});

	// ==========================VALIDATE=============================================================================
		//==check Regex==
		  $.validator.addMethod("check",function(value, element,regex) {
		            //return this.optional(element) || regex.test(value);
		            //or
		            return regex.test(value);
		        });
		//==validate error==
			$(".home-input").validate({
				rules:{
					name:{
						required: true,
						minlength:2,
					},
					email:{
						required: true,
						minlength:11,
						check:/[A-Z0-9._%+-]+@[A-Z0-9-]+.+.[A-Z]{2,4}/igm,
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
				},
			});
			$(".home-submit").click(function(){
				$(".home-input").submit();
			});

		//==================SCROLL and MENU SMALL===================================================================
			$(window).scroll(function(){
				var top = $(window).scrollTop();
				if(top > 1){
					$('#main-header').addClass('fixed-header');
					$('.wrapper').animate({top:'+=50'}, 8000);

				}
				else{
					$('#main-header').removeClass('fixed-header');
					$('.wrapper').animate({top:'-=50'},8000);

				}
			});
			 // $(".button-scroll").click(function(e){
			    // 	e.preventDefault();
			    // 	$(window).scrollTop(3000);
			    // });
			 $(".button-scroll").click(function(){ 
						var upperLimit = 100; 
						var scrollSpeed = 1200;
						var scrollStyle = 'swing';
						$('html, body').animate({scrollTop:3000}, scrollSpeed, scrollStyle );
						 return false; 
					});
		// ========================POPUP===============================================================================
			$(function() {
			    //----- OPEN
			    $('[data-popup-open]').on('click', function(e)  {
			        var targeted_popup_class = $(this).attr('data-popup-open');
			        $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);
			        e.preventDefault();
			    });
			 
			    //----- CLOSE
			    $('[data-popup-close]').on('click', function(e)  {
			        var targeted_popup_class = $(this).attr('data-popup-close');
			        $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);
			        e.preventDefault();
			    });
			   
			});
		});