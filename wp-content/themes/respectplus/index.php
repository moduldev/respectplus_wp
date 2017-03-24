<?php get_header();?>
<section class="container-fluid index_main_img  no_pd ">

    <div class="remain_massage_box">
        <h2 class="index_main_img_title">Агенство недвижимости Respect+</h2>
        <h2 class="index_main_img_title">Все виды операций с недвижимостью</h2>
        <a href="#" class="btn remain_massage_btn">Поиск недвижимости <i class="fa fa-search" aria-hidden="true"></i>
        </a>
        <a href="#" class="btn remain_massage_btn">Подать объявление <i class="fa fa-list-alt" aria-hidden="true"></i></a>
    </div>
    <!--<img src="img/index/днепр%20днем.jpg" class="img-responsive" alt="">-->
</section>
<section class="container-fluid no_pd agency_offers_wrapper">
    <div class="container no_pd">
        <div class="row no_mg">
            <div class="col-xs-12 agency_offers_title_box">
                <h3 class="text-center">Мы предлагаем</h3>
            </div>
        </div>
        <div class="row_line text-center"></div>
        <div class="row no_mg">
            <div class="col-xs-12 col-sm-4">
                <i class="fa fa-info-circle text-center" aria-hidden="true"></i>
                <span class="text-center">Юридическую Консультацию</span>
                <p>Perspiciatis unde omnisiste natus error voluptatem remopa accusantium doloremque laudantium, totam
                    rem.</p>
            </div>
            <div class="col-xs-12 col-sm-4">
                <i class="fa fa-home text-center" aria-hidden="true"></i>
                <span class="text-center">Сопровождение документов</span>
                <p>Perspiciatis unde omnisiste natus error voluptatem remopa accusantium doloremque laudantium, totam
                    rem.</p>
            </div>
            <div class="col-xs-12 col-sm-4">
                <i class="fa fa-handshake-o text-center" aria-hidden="true"></i>
                <span class="text-center">Оценку <br> недвижимости</span>
                <p>Perspiciatis unde omnisiste natus error voluptatem remopa accusantium doloremque laudantium, totam
                    rem.</p>
            </div>
        </div>
    </div>
</section>
<section class="advantage_news_about_wrapper container no_pd">
    <div class="row no_mg">
        <div class="col-xs-12 col-sm-6 col-md-4 slider_text_box">
            <span class="advantage_title">Почему мы?</span>
            <div class="widget_wrapper">
                <?php dynamic_sidebar('sidebar-1') ?>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4 clearfix">
            <span class="advantage_title">Новости</span>
            <?php
            $args = array(
                'posts_per_page' => 1,
                'cat' => '5'
            );

            $query = new WP_Query( $args );
            if ( $query->have_posts() ) {
                while ( $query->have_posts() ) {
                    $query->the_post();
                    if(has_post_thumbnail()){ ?>
                        <div class="advantage_news_mult_box ">
                            <div class="advantage_news_date_box">
                                <span><?php the_time( 'F j, Y' ); ?></span>
                            </div>
                            <?php the_post_thumbnail(); ?>
                        </div>
                        <div><?php the_title( sprintf( '<h1 class="content_news_title"><a href="%s">', esc_url( get_permalink() ), '</a></h1>' ) ); ?></div>


                        <div class="advantage_text">

                            <?php the_excerpt();?>
                        </div>
                        <button class="btn read_more_btn"><a href="<?php echo get_permalink()?>">Читать дальше</a></button>
                  <?  }
                }
            } else {
                get_the_title();
                the_excerpt();
            } ?>

           <?php wp_reset_postdata();
            ;?>

        </div>
        <div class=" col-xs-12 col-md-4 map_wrapper">
            <span class="advantage_title">Как нас найти?</span>
            <div class="map_box">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2644.9155941343784!2d34.986466000789775!3d48.47733259266448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dbe24ade689593%3A0xc5cb5dff7715c432!2z0L_RgNC-0YHQv9C10LrRgiDQodC10YDQs9GW0Y8g0J3RltCz0L7Rj9C90LAsIDYyLCDQlNC90ZbQv9GA0L7MgSwg0JTQvdGW0L_RgNC-0L_QtdGC0YDQvtCy0YHRjNC60LAg0L7QsdC70LDRgdGC0Yw!5e0!3m2!1sru!2sua!4v1489600408125"
                        width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>