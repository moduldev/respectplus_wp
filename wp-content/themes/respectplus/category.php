<?php get_header();?>
<section class="container main_section no_pd">
    <div class="col-xs-12">
        <?php if (function_exists('dimox_breadcrumbs')) dimox_breadcrumbs(); ?>
    </div>
<?php
$currentPage = (get_query_var('paged')) ? get_query_var('paged') : 1 ;
$arg = array('post_per_page'=>3,'paged'=>$currentPage);
$posts = query_posts( $arg);

if ( $posts ) : ?>
	<?php foreach ( $posts as $post ) : setup_postdata( $post ); ?>
		<?php get_template_part('content', get_post_format()) ;?>

	<?php endforeach; ?>

<!--	<div class="pagination_container">-->
<!--		--><?php //next_posts_link(' Предыдущие записи');?>
<!--	</div>-->
<!--	<div class="pagination_container">-->
<!--		--><?php //previous_posts_link('Новые записи ');?>
<!--	</div>-->

</section>
    <div class="container text-center load_more_box">
        <div class="col-xs-12 no_pd">
        <a class="btn btn-default load-more icon_load_more" data-page="1" data-url="<?php echo admin_url('admin-ajax.php');?>">
            <i class="fa fa-refresh  fa-3x fa-fw"></i>

            <span class="load_more_text">загрузить предыдущие новости</span></a>
        </div>
    </div>

<?php endif; wp_reset_query(); ?>
<?php get_footer();?>
