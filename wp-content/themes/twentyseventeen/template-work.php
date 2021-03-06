<?php
/* Template Name: Work */
get_header();
?>
<div id="return-button"></div>
<div class="menu-padder">
    <?php
    $paged = 1;
    $args = array(
        'post_type' => 'post',
        'posts_per_page' => 6,
        'category_name' => 'work',
        'paged' => $paged
    );
    $wp_query = new WP_Query($args);
    $postcount = $wp_query->found_posts;
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
        ?>
            <article data-id="<?php the_permalink() ?>">
            <?php //the_post_thumbnail('post-thumbnail', ['class' => 'img-responsive responsive--full', 'title' => 'Feature image']); ?>
            <div style="background-image: url('<?php echo get_the_post_thumbnail_url(get_the_ID(),'full');?>?cacheBuster=1')" class="work-image hideme-half">
            </div>
            <div class="flex-cont">
                <div class="work-text-left">
                    <h2><a href="<?php the_permalink() ?>"><?php the_title();?></a></h2>
                    <p class="post-tags hideme">
                        <?php echo get_post_meta($post->ID, 'headline2', true); ?>
                    </p>
                </div>
            </div>
            </article>
        <?php
        endwhile;
    endif;

    get_template_part( 'partials/collab', 'footer' );
    ?>

</div>