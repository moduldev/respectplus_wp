<?php
require get_template_directory() . '/inc/walker.php';
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
		Activate menu
	 ====================================================
 */

function respectplus_theme_setup() {

    add_theme_support('menus');

    register_nav_menu('primary','Primary header navigation');

}
add_action('init','respectplus_theme_setup');
