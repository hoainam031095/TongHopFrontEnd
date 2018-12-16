$(document).ready(function(){
		  $('.blider').bxSlider(
		  	{
		  		//pager:false,
		  		touchEnabled:true,
		  		auto:true,
		  		controls: false,
			  });

		  $('#img-scoll').click(function(event){
				var offset = $('#content').offset().top;
				//console.log(offset);
				$('html,body').animate({scrollTop: offset }, 500);
				});


			$('.menu-toggle a').click(function(event){
				var href = $(this).attr('href');
				if(href == '#'){
						event.preventDefault();
						$('html,body').animate({scrollTop: 0}, 300);
					}
				else{
						var offset = $(href).offset().top;
						console.log(offset);
						$('html,body').animate({scrollTop: offset}, 400);
					}
					$('.menu-toggle').toggle(100);
			});

			$(document).click(function(event){
				if($(event.target).is('.menu-toggle')){
					$('.menu-toggle').hide(300);
				}
			});

			$('#menu-click').click(function(event){
				$('.menu-toggle').toggle(100);
			});
});