<footer class="container-fluid no_pd footer_wrapper">
    <div class="container no_pd">
        <div class="row no_mg">
            <div class="col-xs-12 col-sm-4">
                <span class="footer_title">Контакты</span>
                <?php dynamic_sidebar('sidebar-2') ?>
            </div>
            <div class="col-xs-12 col-sm-4">
                <span class="footer_title">Навигация</span>
                <?php wp_nav_menu(

                    array(
                        'container' => '',
                        'menu_class' => 'menu_footer_box',
                        'theme_location' => 'Footer',
                    )

                ); ?>
            </div>
            <div class="col-xs-12 col-sm-4 ">
                <span class="footer_title">Поиск по сайту</span>
                <?php get_search_form();?>
            </div>
        </div>
        <div class="row no_mg">
            <div class="col-xs-12  copyright_box">
                <span class="copyright_text">Copyright © 2017 RespectPlus. Designed by <a href="#">[Module.Dev]</a> All rights reserved.
</span>
            </div>
        </div>
    </div>
</footer>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>-->
<!--<script src="js/bootstrap.min.js"></script>-->
<!--<script src="js/main.js"></script>-->
<?php  wp_footer() ;?>
<script data-skip-moving="true">
    (function(w,d,u,b){
        s=d.createElement('script');r=(Date.now()/1000|0);s.async=1;s.src=u+'?'+r;
        h=d.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);
    })(window,document,'https://cdn.bitrix24.ua/b4172391/crm/site_button/loader_4_rz51dy.js');
</script>
</body>
</html>