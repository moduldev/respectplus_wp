<?php get_header(); ?>
<section class="container main_section no_pd">
	<div class="col-xs-12">
		<?php if ( function_exists( 'dimox_breadcrumbs' ) ) {
			dimox_breadcrumbs();
		} ?>
	</div>

	<section class="about_page_content_wrapper">
		<div class="col-xs-9 col-md-9 ">
			<?php woocommerce_content(); ?>

		</div>
		<div class=" col-sm-3">
			<aside class="sidebar_page">
				<?php dynamic_sidebar( 'sidebar-3' ); ?>
			</aside>
		</div>
	</section>
</section>
<?php get_footer(); ?>
