<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

if ( ( is_single() || ( is_page() && ! twentyseventeen_is_frontpage() ) ) && has_post_thumbnail( get_queried_object_id() ) ) :
	?>
	<footer id="colophon" class="site-footer" role="contentinfo">
	</footer>
	<?php
else:
	?>
	<?php
endif;
?>

		>
</div><!-- #page -->
<?php wp_footer(); ?>

</body>
</html>
