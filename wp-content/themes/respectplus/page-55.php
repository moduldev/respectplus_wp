<?php get_header();?>
<div class="container no_pd">
	<div class="row no_mg">
		<div class="col-xs-12">
			<div class="main-heading">
				<h1><?php the_title(); ?></h1>
			</div>
		</div>
	</div>
	<div class="row no_mg">
		<section class="about_page_content_wrapper">
			<div class="col-xs-8 col-md-8 ">
				<?php if (have_posts()): while (have_posts()): the_post(); ?>

					<?php the_content(); ?>

				<?php endwhile; endif; ?>

			</div>
			<div class="col-xs-4 col-md4 no_pd">
				<img class="img-responsive" src="<?php echo get_template_directory_uri();?> . /img/About/handshake.jpg" alt="">
			</div>
		</section>
	</div>
</div>
<?php get_footer();?>
