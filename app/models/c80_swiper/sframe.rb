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

    scope :def_order, -> { order(:ord => :asc) }

    # def csphoto_img
    #   self.csphoto.present? ? MiniMagick::Image.open(self.csphoto.path):nil
    # [img["width"],img["height"]]
    # end

  end
end
