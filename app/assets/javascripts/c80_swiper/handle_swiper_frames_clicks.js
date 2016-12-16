// dirty: клик по фрейму, у которого есть ссылка, совершит переход на указанную страницу
var handle_swiper_frames_clicks = function () {
    $('.swiper-slide').each(function () {
        var $this = $(this);
        var frame_link_url = $this.data('link-url');
        //console.log('>> ' + $this.data('link-url'));
        if (frame_link_url != '') {
            $this.css('cursor','pointer');
            $this.on('click', function () {
                window.location.href = frame_link_url;
            })
        }
        //if ($this.data('link-url'))
    });
};