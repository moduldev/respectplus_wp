<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php bloginfo('name');?><?php wp_title('|');?></title>
    <meta name="description" content="<?php bloginfo('description');?>">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<header class="container-fluid container_header_wrapper no_pd">
    <div class=" container-fluid contact_header_block no_pd ">
        <div class="container  no_pd">
            <div class="row header_contact_row no_mg clearfix">
                <div class="col-sm-3 col-sm-offset-4 hidden-xs  col-md-offset-3 no_pd header_phone_block">
                    <span><i class="fa fa-phone" aria-hidden="true"></i>Звоните нам: 098-559-49-49</span>
                </div>
                <div class="col-xs-12 col-sm-5 no_pd right header_social_box clearfix">
                    <ul class="header_social_icons ">
                        <li class="social_icons_element"><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
                        </li>
                        <li class="social_icons_element"><a href="#"><i class="fa fa-facebook"
                                                                        aria-hidden="true"></i></a></li>
                        <li class="social_icons_element"><a href="#"><i class="fa fa-google-plus"
                                                                        aria-hidden="true"></i></a></li>
                        <li class="social_icons_element"><a href="#"><i class="fa fa-vk" aria-hidden="true"></i></a>
                        </li>

                    </ul>
                </div>
                <div class="header_logo_box" id="logo_box">
                    <img src="<?php echo get_template_directory_uri(); ?>/img/index/header-logo.png"
                         class="img-responsive" alt="Respect plus">
                    <h1><a href="#">Respect<span>Plus</span></a></h1>
                    <h2><a href="#">Агенство недвижимости</a></h2>
                </div>
            </div>
        </div>

    </div>
    <div class="container-fluid navigation_wrapper  no_pd" id="sticky_box">
        <div class="container no_pd havigation_box clearfix">
            <div class="menu_btn " id="menu_handler">
                <div class="bar1"></div>
                <div class="bar2"></div>
                <div class="bar3"></div>
            </div>
            <nav class="col-xs-12 menu_wrapper  no_pd clearfix">
                <?php wp_nav_menu(

                    array(
                        'container' => '',
                        'menu_class' => 'menu',
                        'theme_location' => 'primary',
                        'walker' => new Walker_Nav_Primary(),
                    )

                ); ?>
            </nav>
        </div>
    </div>
</header>