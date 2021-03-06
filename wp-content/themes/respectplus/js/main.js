
// Switcher advantage widget
$(function ($) {
    $('.widget_wrapper > .side-advantages').removeClass('widget');
    $('.widget_wrapper .side-advantages:nth-child(1)').addClass('widget');

    var widgetInnerWrapper = $('.widget_wrapper .textwidget');
    widgetInnerWrapper.fadeOut('fast');
    $('.widget_wrapper .side-advantages:nth-child(1) .textwidget ').fadeIn('fast');

    $('.widget_wrapper .side-advantages').click(function () {
        $(this).toggleClass('widget');
        $(this).children('.textwidget').slideToggle('fast');
    })
});

$(document).ready(function() {
    var stickyNavTop = $('#sticky_box').height();
    var stickyNav = function(){
        var scrollTop = $(window).scrollTop();
        if (scrollTop > stickyNavTop) {

            $('#sticky_box').addClass('sticky');
            $('#logo_box').addClass('sticky_header_logo_box').removeClass('header_logo_box');
            $('#custom_heater_form').addClass('custom_heater_form_sticky');


        } else {
            $('#sticky_box').removeClass('sticky') ;
            $('#logo_box').addClass('header_logo_box').removeClass('sticky_header_logo_box');
            $('.custom_heater_form').css('margin','11px 0 16px 0');
            $('.mega_menu_hover_line:hover:after').css('bottom','0');
        }
    };

    stickyNav();

    $(window).scroll(function() {
        stickyNav();
    });
});

$(document).ready(function () {
   $('#menu_handler').click(function () {
       $(this).toggleClass('change');
       $('.menu').toggleClass('show');
   })
});

$(document).on('click', '.load-more:not(.loading)', function () {
    var that = $(this);
    var page = that.data('page');
    var newPge = page+1;
    var ajaxurl = that.data('url');

    // that.addClass('loading').find('.load_more_text').slideUp(320);
    that.find('i').addClass('fa-spin');
    $.ajax({

        url : ajaxurl,
        type : 'post',
        data : {
            page : page,
            action : 'load_more'
        },
        error : function (response) {
            console.log(response);
        },
        success : function (response) {

            setTimeout(function () {
            that.data('page',newPge);
            $('.posts_wrapper').append(response);
                that.find('i').removeClass('fa-spin');
                that.removeClass('loading');
            }, 2000);
            // that.addClass('loading').find('.load_more_text').slideDown(320);



        }
    })
});

