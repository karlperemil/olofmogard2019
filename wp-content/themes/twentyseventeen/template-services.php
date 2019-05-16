<?php
/* Template Name: Services */
get_header();
?>
<div id="return-button"></div>
<div class="menu-padder">
    <?php
    if ( have_posts() ) :

        /* Start the Loop */
        while ( have_posts() ) : the_post();

            /*
            * Include the Post-Format-specific template for the content.
            * If you want to override this in a child theme, then include a file
            * called content-___.php (where ___ is the Post Format name) and that will be used instead.
            
            echo "<div class='about-tagline'>";
            echo the_content();
            echo "</div>";
            */
            ?>

            <section class="about">
                <p>Are you looking for a friendly designer driven by challenges <span style="font-size: 8rem; line-height: 0; font-weight: 200; opacity: 0.6;">&#3198</span><br>morale <span style="font-size: 6rem; line-height: 0; font-weight: 200; opacity: 0.6;">&#9895</span> and pixel perfection 	
                <span style="font-size: 7rem; line-height: 0; font-weight: 200; opacity: 0.6;">&#8865</span> ? Then you have come to the right place.
                <br>
                <br>
                My name is Olof. I’m a Swede based in Stockholm who love culture, arts & design. I believe that the recipe for a successful project is passion, trust and hard work.
                <br>
                <br>
                <span style="text-decoration: underline;">Say hello</span> if you are looking for a collaboration.</p>

            </section>
            <section class="services">
                <h3 class="faded section-title">Services</h3>
                <p>Art direction<br>
                Logotypes<br>
                Visual identity<br>
                Illustration<br>
                Style guides<br>
                UI/UX design<br>
                HTML & CSS<br>
                Motion design<br>
                Magazines & print</p>
            </section>
            <section class="clients">
                <h3 class="faded section-title">Clients</h3>
                <p>Nespresso</p>
                <p>Röda korset</p>
                <p>Adobe</p>
                <p>Volkswagen</p>
                <p>Swedish Armed Forces</p>
                <p>Finn</p>
                <p>Saab</p>
                <p>Sturekvarteret</p>
                <p>IOGT-NTO</p>
                <p>Socialdemokraterna</p>
                <p>Telenor</p>
                <p>Cheetos</p>
                <p>Prime</p>
                <p>Neuroförbundet</p>
            </section>
            <section class="experience">
                <h3 class="faded section-title">Experience</h3>
                    <div class="experience-place">Freelance</div>
                    <div class="experience-year">2016</div>
                    <div class="experience-title">Web & Game developer</div>
                    <!-- -->
                    <div class="experience-place">Reform Act</div>
                    <div class="experience-year">2013-2016</div>
                    <div class="experience-title">Fullstack developer</div>
                    <!-- -->
                    <div class="experience-place">TRY/APT</div>
                    <div class="experience-year">2011-2013</div>
                    <div class="experience-title">Front-end Developer</div>
                    <!-- -->
                    <div class="experience-place">Acne Digital</div>
                    <div class="experience-year">2010-2011</div>
                    <div class="experience-title">Flash Developer</div>
                    <!-- -->
                    <div class="experience-place">Acne Digital</div>
                    <div class="experience-year">2009-2010</div>
                    <div class="experience-title">Flash Developer Intern</div>
                    <!-- -->
                    <div class="experience-place">Hyper Island</div>
                    <div class="experience-year">2008-2010</div>
                    <div class="experience-title">Digital Media Programme</div>
                    <!-- -->
            </section>
            <?php
            get_template_part( 'partials/collab', 'footer' );

        endwhile;
    else :

        get_template_part( 'template-parts/post/content', 'none' );

    endif;
    ?>

</div>