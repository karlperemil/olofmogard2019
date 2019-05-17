<?php
/* Template Name: Blog */
get_header();
?>
<div id="return-button"></div>
<div class="menu-padder">
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
        ?>
            <article class="blog-image" data-id="<?php echo get_the_post_thumbnail_url(get_the_ID(),'full');?>">
            <?php //the_post_thumbnail('post-thumbnail', ['class' => 'img-responsive responsive--full', 'title' => 'Feature image']); ?>
            <div style="background-image: url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full');?>?cacheBuster=1')" class="work-image hideme-half">
            </div>
            </article>
        <?php
        endwhile;
    endif;

    get_template_part( 'partials/collab', 'footer' );
    ?>

</div>