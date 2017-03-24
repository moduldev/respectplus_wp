<?php get_header();?>
	<section class="container main_section no_pd">
		<?php if ( $posts ) : ?>
			<?php foreach ( $posts as $post ) : setup_postdata( $post ); ?>
				<?php get_template_part('content', get_post_format()) ;?>

				<?php
			endforeach;
			wp_reset_postdata();
			?>
		<?php endif; ?>
	</section>
<?php get_footer();?>