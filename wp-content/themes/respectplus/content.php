<article class="post_wrapper clearfix" <?php post_class( 'description_event' ); ?> id="<?php the_ID(); ?>">
	<div class="row no_mg">
		<div class="content_post_title col-xs-12">
			<span class="event_time"></span><span><?php the_time( 'F j, Y, H:i ' ); ?></span>
			<div><?php the_title( sprintf( '<h1 class="content_news_title"><a href="%s">', esc_url( get_permalink() ), '</a></h1>' ) ); ?></div>


			<span>Категория: </span><span><?php the_category( ', ' ); ?></span>
		</div>
		<div class="col-xs-12 col-sm-4 thumbnail-img">
			<?php the_post_thumbnail(); ?>
		</div>
		<div class="col-xs-12 col-sm-8 content_excerpr_wrapper">
			<?php if(is_single()){
				the_content();
			}
			else {
				the_excerpt();
			}
			;?>
		</div>
	</div>
</article>

