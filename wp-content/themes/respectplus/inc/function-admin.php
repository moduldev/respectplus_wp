<?php
/*

@package sunsettheme

	========================
		ADMIN PAGE
	========================
*/
function respectplus_add_admin_page() {

    add_menu_page( 'Sunset Theme Options', 'Respectplus', 'manage_options', 'respect-plus', 'respectplus_theme_create_page', 'dashicons-admin-site', 110 );

}
add_action( 'admin_menu', 'respectplus_add_admin_page' );
function respectplus_theme_create_page() {
    //generation of our admin page
    echo '<h1>Respect plus options</h1>';
}