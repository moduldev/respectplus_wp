<?php

/*
	 ====================================================
		Activate main top menu
	 ====================================================
 */

function respectplus_theme_setup() {

	add_theme_support('menus');

	register_nav_menu('primary','Primary header navigation');

}
add_action('init','respectplus_theme_setup');

/*
	 ====================================================
		Activate footer menu
	 ====================================================
 */

function respectplus_theme_footer_setup() {

	add_theme_support('menus');

	register_nav_menu('Footer','Primary footer navigation');

}
add_action('init','respectplus_theme_footer_setup');