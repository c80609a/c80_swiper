class C80Swiper::Sframe < ActiveRecord::Base
  belongs_to :swslider
  # has_many :fcaptions, :dependent => :destroy
  # mount_uploader :image, SframeUploader

  scope :def_order, -> {order(:ord => :asc)}

  # def csphoto_img
  #   self.csphoto.present? ? MiniMagick::Image.open(self.csphoto.path):nil
    # [img["width"],img["height"]]
  # end

end
