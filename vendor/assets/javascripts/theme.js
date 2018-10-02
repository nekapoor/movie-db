$(function () {
    "use strict";

    $(document).ready(function () {
        init_scroll();
        int_introHeight();
        //stickHeader();
        // int_nav_menu_height();
        // int_sliderHero();
        // int_isotopGridPortfolio();
        // int_Elements();
        // int_SliderPluguns();
        // int_lightbox();
        // init_wow();
    });

    $(window).load(function () {
        int_introHeight();
        //int_isotopGridPortfolio();

    });

    $(window).resize(function () {
        int_introHeight();
        //stickHeader();
    });

    $(window).scroll(function () {
        init_scroll();
        //stickHeader();
    });


    // ---------------------------------------------------------------------------------------------------------------------------->
    // SCROLL FUNCTIONS   ||-----------
    // ---------------------------------------------------------------------------------------------------------------------------->

    function init_scroll() {

        $('.scroll-top').click(function () {
            $('html, body').animate({ scrollTop: 0 }, 2000);
            return false;
        });

        // Scroll Down Elements
        $('.scroll-down[href^="#"], .scroll-to-target[href^="#"]').on('click', function (e) {
            e.preventDefault();

            var target = this.hash;
            var $target = $(target);

            $('html, body').stop().animate({
                'scrollTop': $target.offset().top
            }, 900, 'swing', function () {
                window.location.hash = target;
            });
        });
    }

    // ----------------------------------------------------------------
    // Backgrounds Image (Slider, Section, etc..)
    // ----------------------------------------------------------------
    var pageSection = $('.slide-img, .bg-image');
    pageSection.each(function (indx) {

        if ($(this).attr("data-background-img")) {
            $(this).css("background-image", "url(" + $(this).data("background-img") + ")");
        }
    });


    // ----------------------------------------------------------------
    // Intro Height
    // ----------------------------------------------------------------
    function int_introHeight() {

        var targetHeight = '.full-height, #hero-carousel .slide';
        var windiwHeight = $(window).height();
        var borderHeightMinus = -60;
        var borderHeightMinusMobile = -30;

        // Intro Height
        if ($(window).width() < 480) {
            $('.intro-fullscreen, .intro-full-height').css('height', windiwHeight);
        }
        else {
            $('.js-fullscreen-height').css({
                'height': windiwHeight,
                'min-height': '500px'
            });
        }
    };

    // ----------------------------------------------------------------
    // Intro Height
    // ----------------------------------------------------------------

    function stickHeader() {
        var scrolled = $(window).scrollTop();
        var windHeight = $(window).height();
        if (scrolled > 100) {
            $('.header').addClass('header-prepare');
        } else {
            $('.header').removeClass('header-prepare');
        }

        if (scrolled > 1) {
            $('.header').addClass('header-fixed');
        } else {
            $('.header').removeClass('header-fixed');
        }
    };

    // ----------------------------------------------------------------
    // Navigation Menu panel
    // ----------------------------------------------------------------

    var mobile_menu_icon = $(".nav-menu-icon");
    var mobile_menu = $(".nav-menu");

    // Mobile menu max height
    function int_nav_menu_height() {
        mobile_menu.css("max-height", $(window).height() - 65 + "px");
    };

    // Mobile menu style toggle
    $(".nav-menu-icon").click(function () {
        mobile_menu_icon.toggleClass('active');
        mobile_menu.toggleClass('active');
        return false;
    });




});




