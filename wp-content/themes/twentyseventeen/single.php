<?php
/* Template Name: single */
get_header();
?>
<div id="return-button"></div>
<div class="menu-padder">
    <?php
	/* Start the Loop */
	while ( have_posts() ) : the_post();
		?>
		<div class="flexcont">
			<div class="work-row">
				<div class="work-col1">
					<h1><? the_title() ?></h1>
					<p class="post-tags">
						<?
						$post_tags = get_the_tags(); 
						if ( $post_tags ) {
							foreach( $post_tags as $tag ) {
							echo '#' . $tag->name . ' '; 
							}
						}
						?>
					</p>
				</div>
				<div class="work-col2">
					<p><? echo get_post_meta($post->ID, 'preamble', true); ?></p>
				</div>
			</div>
			<div class="post-body">
				<? the_content() ?>
			</div>
			<div class="bottom-nav">
				
				<?php
				$prev_post = get_previous_post(true);
				if (empty( $prev_post )){
					$args = array(
						'posts_per_page' => 1, // we need only the latest post, so get that post only
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
				<div class="prev-post" data-href="<?php echo get_post_permalink($prev_post) ?>">
					<div class="bottom-nav-direction">
						<a href="<?php echo get_post_permalink($prev_post) ?>">Next</a>
					</div>
					<div class="bottom-nav-name">
						<a href="<?php echo get_post_permalink($prev_post) ?>"><?php echo $prev_post->post_title?></a>
					</div>
					<div class="post-tags">
					<?php
						if (!empty( $prev_post )):
							$prev_post_tags = get_the_tags($prev_post ->ID); 
							if ( $prev_post_tags ) {
								foreach( $prev_post_tags as $tag ) {
									echo '#' . $tag->name . ' '; 
								}
							}
						endif; ?>
					</div>
				</div>
			</div>
		</div>
	<?
	endwhile; // End of the loop.
	?>


</div>
			