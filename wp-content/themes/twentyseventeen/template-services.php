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

            <section class="services">
                <h3 class="grey section-title">Services</h3>
                <p>Unity</p>
                <p>VR & Game applications</p>
                <p>Three.js/WebGL </p>
                <p>Front-end development</p>
                <p>Back-end development</p>
                <p>iOs & Android apps</p>
            </section>
            <section class="clients">
                <h3 class="grey section-title">Clients</h3>
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
                <h3 class="grey section-title">Experience</h3>
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