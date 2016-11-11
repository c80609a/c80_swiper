class C80Swiper::Fcaption < ActiveRecord::Base
  belongs_to :sframe

  validates_presence_of :value

  scope :def_order, -> { order(:ord => :asc) }

end
