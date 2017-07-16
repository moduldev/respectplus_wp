<?php get_header();?>
<section class="container main_section no_pd">
    <div class="col-xs-12">
        <?php if (function_exists('dimox_breadcrumbs')) dimox_breadcrumbs(); ?>
    </div>
	<div class="row no_mg">
        <div class="col-xs-12">
            <div class="main-heading">
                <h1><?php the_title(); ?></h1>
            </div>
        </div>
        <div class="col-xs-12 col-md-12 no_pd">
            <img class="img-responsive" src="<?php echo get_template_directory_uri();?> . /img/About/handshake.jpg" alt="">
        </div>

	</div>
	<div class="row no_mg">
		<section class="about_page_content_wrapper" style="margin-top: 25px; text-indent: 25px">
			<div class="col-xs-12 col-md-12 ">
				<?php if (have_posts()): while (have_posts()): the_post(); ?>

					<?php the_content(); ?>

				<?php endwhile; endif; ?>

			</div>


		</section>
	</div>
</section>
<?php get_footer();?>
