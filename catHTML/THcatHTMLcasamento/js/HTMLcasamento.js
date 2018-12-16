$(document).ready(function(){
			$(window).scroll(function(){
				var top = $(window).scrollTop();
				var width =$(window).width();
				if(top > 2030 && width >640)
					{
						$('#menu-scroll').css({
									'position':'fixed',
									'display':'inline-block',
									'z-index':'1',
									});
						$('.menu-pre').css({
						'border-bottom':'#1a2a40 solid 2px'
						})
						$('.menu-onde').css({
									'border-bottom':'none'
									})
					}
					else{
						if(top > 1510 && width >640)
						{
							$('#menu-scroll').css({
									'position':'fixed',
									'display':'inline-block',
									'z-index':'1',
									});
							$('.menu-onde').css({
							'border-bottom':'#1a2a40 solid 2px'
							});
							$('.menu-rsvp').css({
										'border-bottom':'none'
										});
							$('.menu-pre').css({
								'border-bottom':'none'
								})
						}
						else{
							if(top > 940 && width >640)
							{
								$('#menu-scroll').css({
									'position':'fixed',
									'display':'inline-block',
									'z-index':'1',
									});
								$('.menu-rsvp').css({
								'border-bottom':'#1a2a40 solid 2px'
								});
								$('.menu-local').css({
									'border-bottom':'none'
									});
								$('.menu-onde').css({
									'border-bottom':'none'
									})
							}
							else{
								if(top > 200 && width >640)
								{
									$('#menu-scroll').css({
									'position':'fixed',
									'display':'inline-block',
									'z-index':'1',
									});
									$('.menu-local').css({
									'border-bottom':'#1a2a40 solid 2px'
									});
									$('.menu-rsvp').css({
										'border-bottom':'none'
										});
								}
								else{
									$('#menu-scroll').css({
										'display':'none',
									});
								}
							}
						}
					}
			});
			// =======================================================================
			 $(".menu-local").click(function(){ 
						var upperLimit = 100; 
						$('html, body').animate({scrollTop:201}, 800, 'swing' );
						 return false; 
					});
			 $(".menu-rsvp").click(function(){ 
						var upperLimit = 100; 
						$('html, body').animate({scrollTop:941}, 800, 'swing' );
						 return false; 
					});
			 $(".menu-onde").click(function(){ 
						var upperLimit = 100; 
						$('html, body').animate({scrollTop:1511}, 800, 'swing' );
						 return false; 
					});
			 $(".menu-pre").click(function(){ 
						var upperLimit = 100; 
						$('html, body').animate({scrollTop:2031}, 800, 'swing' );
						 return false; 
					});
			// ================================================================
			$('input').iCheck({
				    radioClass: 'iradio_minimal',
		   			increaseArea: '20%' // optional
				});
			// ===================================================================
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