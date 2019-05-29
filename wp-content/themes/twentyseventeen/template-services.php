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
                <p>Are you looking for a friendly designer driven by challenges <span class="challenge">&#3198</span><br> morale <span class="morale">&#9895</span> and pixel perfection 	
                <span class="pixel-perfect">&#8865</span>? Then you have come to the right place.
                <br>
                <br>
                My name is Olof. I’m a Swede based in Stockholm who love culture, arts & design. I believe that the recipe for a successful project is passion, trust and hard work.
                <br>
                <br>
                <a href="mailto:hello@olofmogard.com">Say hello</a> if you want to know more.</p>

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
                Magazines & Reports</p>
            </section>
            <section class="clients">
                <h3 class="faded section-title">Selected clients</h3>
                <p>Adobe<br>
                House of Dagmar<br>
                IKEA<br>
                Kosta Boda<br>
                NCC<br>
                WWF<br>
                Scandic<br>
                Sturekvarteret<br>
                Utrikesdepartementet<br>
                Uddevalla Kommun
                </p>
            </section>
            <section class="experience">
                <h3 class="faded section-title">Experience</h3>
                    <div class="experience-place">Freelance</div>
                    <div class="experience-year">2018 – 20XX</div>
                    <div class="faded experience-title">Art director & Visual designer</div>
                    <!-- -->
                    <div class="experience-place">Accomplice</div>
                    <div class="experience-year">2016 – 2018</div>
                    <div class="faded experience-title">Digital designer</div>
                    <!-- -->
                    <div class="experience-place">Tiny Studio</div>
                    <div class="experience-year">2015 – 2016</div>
                    <div class="faded experience-title">UI/UX designer & Creative</div>
                    <!-- -->
                    <div class="experience-place">Hyper Island</div>
                    <div class="experience-year">2014 – 2016</div>
                    <div class="faded experience-title">Digital Media Programme</div>
                    <!-- -->
                    <div class="experience-place">Älvkullegymnasiet</div>
                    <div class="experience-year">2009 – 2012</div>
                    <div class="faded experience-title">Motion Picture studies</div>
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