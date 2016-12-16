module C80Swiper
  class Swslider < ActiveRecord::Base

    has_many :sframes, :dependent => :destroy
    accepts_nested_attributes_for :sframes,
                                  :reject_if => lambda { |attributes|
                                    !attributes.present?
                                  },
                                  :allow_destroy => true

    # Если оно не равно `0`, значит подразумевается автопроигрывание с заданным интервалом
    # Валидировать это значение: оно должно присутствовать и быть в диапазоне от `0` до `100`.
    validates :autoplay,
              :presence => true,
              :numericality => {
                  :greater_than_or_equal_to => 0,
                  :less_than_or_equal_to => 100
              }

    # has_and_belongs_to_many :swprops
    # выдать список тех Примеров, которые должны выводиться в виджете
    # def self.all_widgeted
    #   self.joins(:csprops)
    # end

  end
end
