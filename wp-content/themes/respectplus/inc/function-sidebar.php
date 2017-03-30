<?php
/*
====================================================
Sidebar function
====================================================
*/
function respectplus_widget_setup() {
	register_sidebar(array(
	'name' => 'Sidebar',
	'id' => 'sidebar-1',
	'class' => 'custom',
	'description' => 'text advansed company sidebar',
	'before_widget' => '<div id="%1$s" class="side-advantages widget %2$s">',
	'after_widget' => '</div>',
	'before_title' => '<span class="widget-title">',
	        'after_title' => '</span>',
	));
}
/*
	 ====================================================
		Activate sidebar
	 ====================================================
 */
add_action('widgets_init','respectplus_widget_setup');


/*
====================================================
Sidebar function
====================================================
*/
function respectplus_widget_setup1() {
	register_sidebar(array(
		'name' => 'Sidebar',
		'id' => 'sidebar-2',
		'class' => 'custom',
		'description' => 'Footer contacts sidebar',
		'before_widget' => '<div id="%1$s" class="footer_contact_widget widget %2$s">', // по умолчанию виджеты выводятся <li>-списком
		'after_widget' => '</div>',
		'before_title' => '<span class="widget-title">',
		'after_title' => '</span>',
	));
}
/*
	 ====================================================
		Activate sidebar
	 ====================================================
 */
add_action('widgets_init','respectplus_widget_setup1');

/*
====================================================
Sidebar function
====================================================
*/
function respectplus_widget_setup2() {
    register_sidebar(array(
        'name' => 'Sidebar',
        'id' => 'sidebar-3',
        'class' => 'custom',
        'description' => 'Page contacts sidebar',
        'before_widget' => '<div id="%1$s" class="page_contact_widget widget %2$s">', // по умолчанию виджеты выводятся <li>-списком
        'after_widget' => '</div>',
        'before_title' => '<span class="widget-title">',
        'after_title' => '</span>',
    ));
}
/*
	 ====================================================
		Activate sidebar
	 ====================================================
 */
add_action('widgets_init','respectplus_widget_setup2');

/*
====================================================
Sidebar function
====================================================
*/
function respectplus_widget_setup3() {
    register_sidebar(array(
        'name' => 'Sidebar',
        'id' => 'sidebar-4',
        'class' => 'custom',
        'description' => 'Filter woocommerce sidebar',
        'before_widget' => '<div id="%1$s" class="page_contact_widget widget %2$s">', // по умолчанию виджеты выводятся <li>-списком
        'after_widget' => '</div>',
        'before_title' => '<span class="widget-title">',
        'after_title' => '</span>',
    ));
}
/*
	 ====================================================
		Activate sidebar
	 ====================================================
 */
add_action('widgets_init','respectplus_widget_setup3');

