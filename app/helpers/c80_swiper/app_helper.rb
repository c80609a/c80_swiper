module C80Swiper
  module AppHelper

    def swipe(swslider_id=nil, effect='slide')

      swslider = swslider_id.nil? ?
          C80Swiper::Swslider.first :
          C80Swiper::Swslider.find(swslider_id)

      render :partial => 'c80_swiper/swipe',
             :locals => {
                 frames: swslider.sframes,
                 options: {
                     mark_pagination: true,
                     mark_buttons: true,
                     mark_scrollbar: false,
                     mark_lazy: false,
                     params: {
                         effect: effect
                     }
                 }
             }
    rescue => e
      Rails.logger.debug "[TRACE] <app_helper.swipe> #{e}"
      render :partial => 'c80_swiper/shared/swipe_error_message',
             :locals => {
                 error_message: "#{e}"
             }
    end

  end
end