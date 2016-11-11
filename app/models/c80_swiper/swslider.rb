module C80Swiper
  class Swslider < ActiveRecord::Base

    has_many :sframes, :dependent => :destroy
    accepts_nested_attributes_for :sframes,
                                  :reject_if => lambda { |attributes|
                                    !attributes.present?
                                  },
                                  :allow_destroy => true

    # has_and_belongs_to_many :swprops
    # выдать список тех Примеров, которые должны выводиться в виджете
    # def self.all_widgeted
    #   self.joins(:csprops)
    # end

  end
end
