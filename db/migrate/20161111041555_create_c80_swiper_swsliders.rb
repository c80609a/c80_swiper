class CreateC80SwiperSwsliders < ActiveRecord::Migration
  def change
    create_table :c80_swiper_swsliders do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
