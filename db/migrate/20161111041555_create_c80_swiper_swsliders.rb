class CreateC80SwiperSwsliders < ActiveRecord::Migration
  def change
    create_table :c80_swiper_swsliders, :options => 'COLLATE=utf8_unicode_ci' do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
