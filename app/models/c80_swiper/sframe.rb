module C80Swiper
  class Sframe < ActiveRecord::Base
    belongs_to :swslider
    has_many :fcaptions, :dependent => :destroy
    accepts_nested_attributes_for :fcaptions,
                                  :reject_if => lambda { |attributes|
                                    !attributes.present?
                                  },
                                  :allow_destroy => true

    mount_uploader :image, SframeUploader

    validates_presence_of :image

    scope :def_order, -> { order(:ord => :asc) }

    # def csphoto_img
    #   self.csphoto.present? ? MiniMagick::Image.open(self.csphoto.path):nil
    # [img["width"],img["height"]]
    # end

    # def image_url
      # http://lorempixel.com/600/600/nature/1
    # end

  end
end
