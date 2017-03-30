<?php
require get_template_directory() . '/inc/function-breadcrumbs.php';
require get_template_directory() . '/inc/function-ajax.php';
require get_template_directory() . '/inc/function-admin.php';
require get_template_directory() . '/inc/function-sidebar.php';
require get_template_directory() . '/inc/function-menu.php';
require get_template_directory() . '/inc/function-walker.php';




/*
	 ====================================================
		Include scripts
	 ====================================================
 */
function respectplus_script_enqueue() {

    wp_enqueue_style('custom_style', get_template_directory_uri() . '/styles/main.css', array(),'1.0.0', 'all');
    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/styles/bootstrap.min.css', array(),'1.0.0', 'all');
    wp_enqueue_style('fontawesome', get_template_directory_uri() . '/styles/font-awesome.min.css', array(),'1.0.0', 'all');
    wp_enqueue_script('custom_js', get_template_directory_uri() . '/js/main.js',array('jquery'),'1.0.0', true);


}
add_action('wp_enqueue_scripts', 'respectplus_script_enqueue') ;
/*
	 ====================================================
		Activate CDN Jquery
	 ====================================================
 */
function shapeSpace_include_custom_jquery() {

    wp_deregister_script('jquery');
    wp_enqueue_script('jquery', 'https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js', array(), null, true);

}
add_action('wp_enqueue_scripts', 'shapeSpace_include_custom_jquery');

/*
	 ====================================================
		Activate Google Fonts
	 ====================================================
 */
function load_fonts() {
    wp_register_style('et-googleFonts', 'https://fonts.googleapis.com/css?family=Roboto');
    wp_enqueue_style( 'et-googleFonts');
}
add_action('wp_print_styles', 'load_fonts');

/*
	 ====================================================
	    Activate custom background
	 ====================================================
 */
add_theme_support('custom-background');

/*
	 ====================================================
		Activate post thumbnails
	 ====================================================
 */
add_theme_support('post-thumbnails');

/*
	 ====================================================
		Activate search form
	 ====================================================
 */
add_theme_support('html5',array('search-form'));
/*
	 ====================================================
		Activate post formats
	 ====================================================
 */

add_theme_support('post-formats',array('aside','image','video'));

/*
	 ====================================================
		Activate woocommerce plugin
	 ====================================================
 */


add_theme_support( 'woocommerce' );

//==============================================================================================
/*
	 ====================================================
		Changed name of tabs in product page woocommerce
	 ====================================================
 */
function woocommerce_default_product_tabs( $tabs = array() ) {
	global $product, $post;

	// Description tab - shows product content
	if ( $post->post_content ) {
		$tabs['description'] = array(
			'title'    => __( 'Описание', 'woocommerce' ),
			'priority' => 10,
			'callback' => 'woocommerce_product_description_tab'
		);
	}

	// Additional information tab - shows attributes
	if ( $product && ( $product->has_attributes() || ( $product->enable_dimensions_display() && ( $product->has_dimensions() || $product->has_weight() ) ) ) ) {
		$tabs['additional_information'] = array(
			'title'    => __( 'Дополнительно', 'woocommerce' ),
			'priority' => 20,
			'callback' => 'woocommerce_product_additional_information_tab'
		);
	}

	// Reviews tab - shows comments
	if ( comments_open() ) {
		$tabs['reviews'] = array(
			'title'    => sprintf( __( 'Reviews (%d)', 'woocommerce' ), $product->get_review_count() ),
			'priority' => 30,
			'callback' => 'comments_template'
		);
	}

	return $tabs;
}



