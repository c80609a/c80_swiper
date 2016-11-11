class CreateC80SwiperSwprops < ActiveRecord::Migration
  def change
    create_table :c80_swiper_swprops, :options => 'COLLATE=utf8_unicode_ci' do |t|

      t.timestamps null: false
    end
  end
end
