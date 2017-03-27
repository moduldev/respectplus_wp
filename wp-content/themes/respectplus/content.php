<div class="col-xs-12">
    <?php if (function_exists('dimox_breadcrumbs')) dimox_breadcrumbs(); ?>
</div>
<article class="post_wrapper clearfix" <?php post_class('description_event'); ?> id="<?php the_ID(); ?>">
    <div class="row no_mg">
        <a class="content_post_title col-xs-12">
            <div><?php the_title(sprintf('<h1 class="content_news_title"><a class="content_news_title_text" href="%s">', esc_url(get_permalink()), '</a></h1>')); ?>
        </a>
    </div>
    <div class="col-xs-12">
        <span class="event_time"></span><span><?php the_time('F j, Y, H:i '); ?></span>


        <span>Категория: </span><span class="content_category_link"><?php the_category(', '); ?></span>
    </div>
    <div class="col-xs-12 col-sm-4 thumbnail-img">
        <?php the_post_thumbnail(); ?>
    </div>
    <div class="col-xs-12 col-sm-8 content_excerpr_wrapper clearfix">
        <?php if (is_single()) {
            the_content(); ?>
            <a class="btn read_more_btn text-right" href="<?php echo get_category_link(5); ?>">Вернуться в раздел "Новости"</a>

            <?php
        } else {
            the_excerpt(); ?>
            <a class="btn read_more_btn text-right"  href="<?php echo get_permalink() ?>">Подробнее</a>
        <?php }; ?>

    </div>
</article>

