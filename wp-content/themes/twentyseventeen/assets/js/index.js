(function($){
    if(getCookie('emilj_visited_site') == 'yes'){
        $('#menu').css({opacity:'1',transition:'none'});
    }

    document.cookie = "emilj_visited_site=yes";
    $(document).ready(function(){
        $('#title-bar').click(function(){
            document.location.href = "/";
        });

        $('.full-width-16-9').each(function(){
            $el = $(this);
            console.log($el);
            console.log($el.find('img').attr('src'));
            $img = $el.find('img');
            var bgsrc = $img.attr('src');
            $el.css('background-image','url(' + bgsrc + ')');
            if(!$el.hasClass('browser-image')){
                $img.remove();
            }
        });
        function onScroll(e){
            if( $('body').hasClass('page-template-template-work') ){
                console.log($('.collab').position().top - window.innerHeight,window.scrollY);
                if(window.scrollY >= $('.collab').offset().top - window.innerHeight ){
                    $('body').addClass('has-scrolled-bottom');
                }
                else {
                    $('body').removeClass('has-scrolled-bottom');
                }
            }
            else {
                if(window.scrollY > 50){
                    $('body').addClass('has-scrolled');
                }
                else {
                    $('body').removeClass('has-scrolled');
                }
            }

            $('.hideme').each( function(i){
            
                var bottom_of_object = $(this).position().top + $(this).outerHeight();
                var bottom_of_window = $(window).scrollTop() + $(window).height();
                
                /* If the object is completely visible in the window, fade it it */
                if( bottom_of_window > bottom_of_object ){
                    $(this).animate({'opacity':'1'},750);
                };
            });

            $('.hideme-half').each( function(i){
            
                var bottom_of_object = $(this).position().top + ($(this).outerHeight()/2);
                var bottom_of_window = $(window).scrollTop() + $(window).height();
                
                /* If the object is completely visible in the window, fade it it */
                if( bottom_of_window > bottom_of_object ){
                    $(this).animate({'opacity':'1'},750);
                };
            });
        }
        $(window).scroll(onScroll);
        onScroll();


        $('.menu-about').hover(function(){
            $('.menu-about').removeClass('fade-gray');
            $('.menu-work').addClass('fade-gray');
        });

        $('.menu-work').hover(function(){
            $('.menu-work').removeClass('fade-gray');
            $('.menu-about').addClass('fade-gray');
        });

        $('#menu-select').mouseout(function(){
            console.log('mouse out yo');
            $('.menu-about,.menu-work').removeClass('fade-gray');
        })

        $('.prev-post').click(function(e){
            window.location.href = $(e.currentTarget).data('href');
        })



        $('#return-button').click(function(){
            $(window).scrollTo(0,300);
        });

        $('article').click(function(e){
            document.location.href = $(e.currentTarget).attr('data-id');
        });

        var count = 0;
        $('.menu-padder section').each(function(){
            $(this).fadeOut(0);
            $(this).delay(count * 300).fadeIn(600);
            count++;
        });
        count = 0;

        $('body > canvas').css('opacity','1');
        $('body').addClass('webgl-loaded');


        $(".work-col1 h1").fitText(.9, { minFontSize: '12px', maxFontSize: '80px' });
    });

}(jQuery));

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
        c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
        }
    }
    return "";
}

/*global jQuery */
/*!
* FitText.js 1.2
*
* Copyright 2011, Dave Rupert http://daverupert.com
* Released under the WTFPL license
* http://sam.zoy.org/wtfpl/
*
* Date: Thu May 05 14:23:00 2011 -0600
*/

(function( $ ){

    $.fn.fitText = function( kompressor, options ) {
  
      // Setup options
      var compressor = kompressor || 1,
          settings = $.extend({
            'minFontSize' : Number.NEGATIVE_INFINITY,
            'maxFontSize' : Number.POSITIVE_INFINITY
          }, options);
  
      return this.each(function(){
  
        // Store the object
        var $this = $(this);
  
        // Resizer() resizes items based on the object width divided by the compressor * 10
        var resizer = function () {
          $this.css('font-size', Math.max(Math.min($this.width() / (compressor*10), parseFloat(settings.maxFontSize)), parseFloat(settings.minFontSize)));
        };
  
        // Call once to set.
        resizer();
  
        // Call on resize. Opera debounces their resize by default.
        $(window).on('resize.fittext orientationchange.fittext', resizer);
  
      });
  
    };
})(jQuery);
  