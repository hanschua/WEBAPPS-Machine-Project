
	var jump=function(e){
	
		if (e){
			e.preventDefault();
			var target = $(this).attr("href");
		}else{
			var target = location.hash;
		}

		$('html,body').animate({
			scrollTop: $(target).offset().top
		},600,function(){
			location.hash = target;
		});

	}
	
	$('html, body').hide();
	
	$(document).ready(function(){
	
		$('.button-collapse').sideNav({menuWidth: 240, activationWidth: 70});
		
		$('a[href^="#"]').on('click',function (e) {
			e.preventDefault();

			var target = this.hash;
			var $target = $(target);

			$('html, body').stop().animate({
				'scrollTop': $target.offset().top
			}, 600, 'swing', function () {
				window.location.hash = target;
			});
		});
		
		$('a[href^=#]').bind("click", jump);

		if (location.hash){
			setTimeout(function(){
				$('html, body').scrollTop(0).show();
				jump();
			}, 0);
		}else{
			$('html, body').show();
		}
		
	});
