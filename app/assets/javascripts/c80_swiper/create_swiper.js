
var create_swiper = function (options) {
    console.log('<create_swiper>');

    var swiper_options = {
        // Optional parameters
        //direction: 'vertical',
        loop: true//,

        // If we need pagination
        //pagination: '.swiper-pagination',

        // Navigation arrows
        //nextButton: '.swiper-button-next',
        //prevButton: '.swiper-button-prev',

        // And if we need scrollbar
        //scrollbar: '.swiper-scrollbar'
    };

    if (options['mark_pagination']) {
        swiper_options['pagination'] = '.swiper-pagination';
    }

    if (options['mark_buttons']) {
        swiper_options['nextButton'] = '.swiper-button-next';
        swiper_options['prevButton'] = '.swiper-button-prev';
    }

    if (options['mark_scrollbar']) {
        swiper_options['scrollbar'] = '.swiper-scrollbar';
    }

    return new Swiper('.swiper-container', swiper_options)
};