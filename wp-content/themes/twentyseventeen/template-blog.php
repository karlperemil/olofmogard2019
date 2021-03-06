<?php
/* Template Name: Blog */
get_header();
?>
<div id="return-button"></div>
<div class="menu-padder">
<div class="feed-text-wrapper">
    <div class="big-title">Feed of graphics</div>
    <div class="body-text">A mixed set of personal projects,<br>
    client work and experiments.</div>
</div>

    <?php
    $paged = 1;
    $args = array(
        'post_type' => 'post',
        'posts_per_page' => 20,
        'category_name' => 'blog',
        'paged' => $paged
    );
    $wp_query = new WP_Query($args);
    $postcount = $wp_query->found_posts;
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
            if( get_post_meta($post->ID, 'video', true) == true ): ?>
                <article class="blog-image blog-video" data-id="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full');?>">
                    <?php the_content(); ?>
                </article>
            <?php else : ?>
                <article class="blog-image" style="background-image: url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full');?>')" data-id="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full');?>">
                    <!-- <img src="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full');?>"> -->
                </article>
            <?php endif; ?>
        <?php
        endwhile;
    endif;

    get_template_part( 'partials/collab', 'footer' );
    ?>

</div>

<div id="blog-modal">
    <div class="blog-modal-close">&#10005;</div>
    <img class="blog-modal-image" src="">
</div>