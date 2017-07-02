<?php get_header(); ?>
<?php if ($posts) : ?>

    <div class="container main_section">
        <div class="row">
            <div class="col-xs-12">
                <?php foreach ($posts as $post) : setup_postdata($post); ?>
                    <?php get_template_part('content', 'search'); ?>
                <?php endforeach;
                wp_reset_postdata(); ?>
            </div>
        </div>
    </div>

<?php endif; ?>
<?php get_footer(); ?>