$(document).ready(function(){
		  $('.blider').bxSlider(
		  	{
		  		//pager:false,
		  		touchEnabled:true,
		  		auto:true,
		  		controls: true,
			  });
		  $('#button-scoll').click(function(event){
				var offset = $('#opinion').offset().top;
				//console.log(offset);
				$('html,body').animate({scrollTop: offset }, 500);
				});
		  $('#toggle-menu').click(function(event){
				$('.menu-main').toggle(100);
			});

});