<?php
/*

@package respectplus

	========================
		AJAX
	========================
*/
add_action('wp_ajax_nopriv_load_more','load_more');
add_action('wp_ajax_load_more','load_more');

function load_more(){

    $paged = $_POST["page"]+1;
    $query = new WP_Query(array(
        'post_type' => 'post',
        'cat' => 5,
        'paged' => $paged
    ));
    if($query ->have_posts()):
        while($query ->have_posts()) : $query -> the_post();
            get_template_part('content', get_post_format());
        endwhile;
    endif;
    wp_reset_postdata();
    die();

}