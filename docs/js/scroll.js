$(document).ready(function(){
	$('a[href^="#"]').on('click',function (e) {
	    e.preventDefault();

	    var target = this.hash;
	    var $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 900, 'swing', function () {
	        window.location.hash = target;
	    });
	});


	var wrap = $(window);
	var nav = $(".nav-wrap");
	var navTop = nav.offset().top;

	var stick = function(e) {
		var scrollTop = wrap.scrollTop();
	  if (scrollTop >= navTop) {
	  	console.log(scrollTop,navTop,'yes');  
	    nav.addClass("sticky");
	  } 
	  else {
	  	console.log(scrollTop,navTop,'no');
	  	nav.removeClass("sticky");
	  }
	};

	wrap.on("scroll", stick);
});