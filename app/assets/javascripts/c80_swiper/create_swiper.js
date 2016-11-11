
var create_swiper = function (options) {
    console.log('<create_swiper>');

    var swiper_options = {
        loop: true
    };

    if (options['mark_pagination']) {
        swiper_options['pagination'] = '.swiper-pagination';
        swiper_options['paginationClickable'] = true;
    }

    if (options['mark_buttons']) {
        swiper_options['nextButton'] = '.swiper-button-next';
        swiper_options['prevButton'] = '.swiper-button-prev';
    }

    if (options['mark_scrollbar']) {
        swiper_options['scrollbar'] = '.swiper-scrollbar';
    }

    if (options['mark_lazy']) {
        swiper_options['lazyLoading'] = true;
        swiper_options['preloadImages'] = false;
    }

    if (options['params'] != undefined) {

        $.extend(swiper_options, options['params']);

    }

    return new Swiper('.swiper-container', swiper_options)
};