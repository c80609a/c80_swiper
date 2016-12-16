# Добавляем `integer` свойство модели `Swslider`: `autoplay`
# Если оно не равно `0`, значит подразумевается автопроигрывание с заданным интервалом
# noinspection RubyResolve
class AddAutoplayToC80SwiperSwsliders < ActiveRecord::Migration
  def change
    add_column :c80_swiper_swsliders, :autoplay, :integer
  end
end