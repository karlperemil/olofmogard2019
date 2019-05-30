<?php

/* Template Name: single */
while ( have_posts() ) : the_post();

global $single_background;
$single_background = 'black';
if( metadata_exists('post', $post->ID, 'background') ){
	$single_background = get_post_meta($post->ID, 'background', true);
}

get_header();
?>
<div id="return-button"></div>
<div class="menu-padder">
	<div class="flexcont">
		<div class="work-row">
			<div class="work-col1">
				<h1><?php the_title() ?></h1>
			</div>
			<div class="work-col2">
				<p><?php echo get_post_meta($post->ID, 'preamble', true); ?></p>
			</div>
			<?php if( metadata_exists('post', $post->ID, 'role') ): ?>
				<div class="work-col-extra">
					<p class="gray">Role</p>
					<p><?php echo get_post_meta($post->ID, 'role', true); ?></p>
				</div>
			<?php endif; ?>
			<?php if( metadata_exists('post', $post->ID, 'partner') ): ?>
				<div class="work-col-extra">
					<p class="gray">Partner</p>
					<p><?php echo get_post_meta($post->ID, 'partner', true); ?></p>
				</div>
			<?php endif; ?>
			<?php if( metadata_exists('post', $post->ID, 'link') ): ?>
				<div class="work-col-extra">
					<a target="_blank" href="<?php echo get_post_meta($post->ID, 'link', true); ?>" class="post-link gray"><?php echo get_post_meta($post->ID, 'link', true); ?></a>
				</div>
			<?php endif; ?>
		</div>
		<div class="post-body">
			<?php the_content() ?>
		</div>
		<div class="bottom-nav">
			<?php
			$prev_post = get_previous_post(true);
			if (empty( $prev_post )){
				$args = array(
					'posts_per_page' => 1,
					'category_name' => 'work',
					'orderby' => 'post_date',
					'order' => 'DESC'
				);
				$the_query = new WP_Query($args);

				$prev_post_id = 0;
				if ( $the_query->have_posts() ) {
					while ( $the_query->have_posts() ) {
						$the_query->the_post();
						$prev_post_id = get_the_ID();
					}
					wp_reset_postdata();
				} else {
					// no posts found
				}

				$prev_post = get_post($prev_post_id);
			}
			else {
				
			}
			?>
			<div class="prev-post" data-href="<?php the_permalink($prev_post) ?>">
				<div class="bottom-nav-direction">
					<a href="<?php the_permalink($prev_post) ?>">Next</a>
				</div>
				<div class="bottom-nav-name">
					<a href="<?php the_permalink($prev_post) ?>"><?php echo $prev_post->post_title?></a>
				</div>
			</div>
		</div>
	</div>
	</div>
<?php
endwhile; // End of the loop.
?>