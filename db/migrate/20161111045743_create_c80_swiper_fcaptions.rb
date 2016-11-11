class CreateC80SwiperFcaptions < ActiveRecord::Migration
  def change
    create_table :c80_swiper_fcaptions do |t|
      t.string :value
      t.references :sframe, index: true
      t.integer :ord

      t.timestamps null: false
    end
    # add_foreign_key :c80_swiper_fcaptions, :sframes
  end
end
