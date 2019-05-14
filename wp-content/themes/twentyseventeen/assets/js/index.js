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

        if($('body').hasClass('home')){
            window.page3d = 'home';
            create3dScene(jQuery,'canvas-');
        }else if($('body').hasClass('page-template-template-services')){
            window.page3d = 'services';
            create3dScene(jQuery);
        }

        var count = 0;
        $('.menu-padder section').each(function(){
            $(this).fadeOut(0);
            $(this).delay(count * 300).fadeIn(600);
            count++;
        });
        count = 0;

        $(".work-col1 h1").fitText(.9, { minFontSize: '12px', maxFontSize: '80px' });
    });

}(jQuery));

function createRenderLayer($,zIndex,cname){


    var opts = {alpha: cname == 'renderer-top' ? true : false ,antialias:true};
    var obj = new THREE.WebGLRenderer(opts);
    if(window.page3d == 'home'){
        obj.physicallyCorrectLights = true;
    }
    

    obj.domElement.className = cname;
    obj.domElement.style.position = 'absolute';
    obj.domElement.style.zIndex = zIndex;
    obj.domElement.style.top = 0;
    obj.setSize( window.innerWidth, window.innerHeight );
    document.body.appendChild( obj.domElement );

    obj.vars = {};
    obj.vars.scene = new THREE.Scene();
    obj.vars.camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );

    obj.vars.light = new THREE.DirectionalLight( 0xffffff, 1 );
    obj.vars.light.position.set(0.5, 0, 0.866);
    obj.vars.light.intensity = 3.5;
    obj.vars.scene.add( obj.vars.light );

    obj.vars.ambient = new THREE.AmbientLight( 0xFFFFFF ); // soft white light
    obj.vars.ambient.intensity = 15;
    obj.vars.ambient.position.set(0.5, 0, 0.866);
    obj.vars.scene.add( obj.vars.ambient );

    obj.vars.hemi = new THREE.HemisphereLight();
    obj.vars.hemi.color = new THREE.Color(1,.6,.6);
    obj.vars.scene.add( obj.vars.hemi );
    obj.vars.hemi.intensity = 5;


    obj.vars.camera.position.z = 1.5;

    return obj;
}

function create3dScene($){
    
    window.rendererBottom = createRenderLayer($,0,'renderer-bottom');

    window.screenStartWidth = window.innerWidth;

    var loader = new THREE.GLTFLoader();
    var objloader = new THREE.OBJLoader();

    var assetPath = '/wp-content/themes/twentyseventeen/assets/3d/';
    var itemToLoad = 'vive/scene.gltf';
    if(page3d == 'services'){
        console.log(page3d);
        itemToLoad = 'new_3d-anaglyph_v21-flatshade.gltf'
        loader.load( assetPath  + itemToLoad, function ( gltf ) {
            

            window.controller1 = gltf.scene;
            controller1.scale.set(.3,.3,.3);


            rendererBottom.vars.pointLight = new THREE.PointLight();
            rendererBottom.vars.pointLight.position.set(-0.352,1.920,5.710);
            rendererBottom.vars.scene.add(rendererBottom.vars.pointLight);
            rendererBottom.vars.light.position.set(-10.442, -1.267, 8.698);
            rendererBottom.vars.light.intensity = 1;
            rendererBottom.vars.ambient.intensity = .3;
            rendererBottom.vars.ambient.color = new THREE.Color(1,1,.9);
            rendererBottom.vars.hemi.intensity = 0;

            


            rendererBottom.vars.scene.add( controller1 );
            
            controller1.position.set(0.8,0.5,-1);
            controller1.rotation.setFromVector3(new THREE.Vector3(0.55,-1.1,0))
    
            $('body > canvas').css('opacity','1');
    
        }, undefined, function ( error ) {
    
            console.error( error );
    
        } );
    }
    else if(page3d == 'home') {
        console.log(page3d);
        window.rendererTop = createRenderLayer($,3,'renderer-top');
        loader.load( assetPath  + itemToLoad, function ( gltf ) {

            window.controller1 = gltf.scene;
            window.controller2 = gltf.scene.clone();
            rendererBottom.vars.scene.add( controller1 );
            rendererTop.vars.scene.add( controller2 );
    
            controller1.position.y = .2
            controller1.position.z = -1.8;
            controller1.position.x = 1;
            controller1.rotateX(45);
    
            controller2.position.x = -1.6;
            controller2.position.y = -.2
            controller2.position.z = -.8
            controller2.rotateX(90);
            controller2.rotateY(0);
            controller2.rotateZ(32);
    
            $('body > canvas').css('opacity','1');
            $('body').addClass('webgl-loaded');

            var el = $('#main-title-wrap')[0];
            console.log(el);
                
        }, undefined, function ( error ) {
    
            console.error( error );
            $('body').addClass('webgl-loaded');
    
        } );
    }
    
    animate();
    window.addEventListener( 'resize', onWindowResize, false );
}

function animate() {
    rendererBottom.render( rendererBottom.vars.scene, rendererBottom.vars.camera );
    if(window.rendererTop){
        rendererTop.render( rendererTop.vars.scene, rendererTop.vars.camera );
    }
    if(window.controller1 && page3d == 'home'){
        controller1.rotateY(.001);
        controller1.rotateX(.001);
        controller1.position.x += Math.sin( Date.now() * 0.0004 ) * 0.003;
        controller1.position.z += Math.sin( Date.now() * 0.0006 ) * 0.003;

        controller2.rotateY(.001);
        controller2.rotateX(.004);
        controller2.position.x += Math.sin( Date.now() * 0.0007 ) * 0.0003;
        checkBounds(controller1);
        checkBounds(controller2);
    }
    else if(window.controller1 && page3d == 'services'){
        //controller1.children[0].rotateY( Math.sin(Date.now()*0.001) * 0.003 );
        controller1.children[0].rotateY(.005);
        controller1.children[0].rotateX( Math.sin(Date.now()*0.0005) * 0.001 );
        //controller1.rotateX(.006);
    }
    requestAnimationFrame( animate );
}

function checkBounds(model){
    if(model.position.x > 5){
        model.position.x = -4;
    }
}

function onWindowResize() {
    rendererBottom.vars.camera.aspect = window.innerWidth / window.innerHeight;
    rendererBottom.vars.camera.updateProjectionMatrix();
    rendererBottom.setSize( window.innerWidth, window.innerHeight );
    var scalar = window.innerWidth/window.screenStartWidth;
    rendererBottom.vars.scene.scale.set(scalar,scalar,scalar);

    if(window.rendererTop){
        rendererTop.vars.camera.aspect = window.innerWidth / window.innerHeight;
        rendererTop.vars.camera.updateProjectionMatrix();
        rendererTop.setSize( window.innerWidth, window.innerHeight );
        rendererTop.vars.scene.scale.set(scalar,scalar,scalar);
    }

    document.body.height = window.innerHeight;
} 

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
  