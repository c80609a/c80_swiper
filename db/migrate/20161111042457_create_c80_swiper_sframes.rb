class CreateC80SwiperSframes < ActiveRecord::Migration
  def change
    create_table :c80_swiper_sframes, :options => 'COLLATE=utf8_unicode_ci' do |t|
      t.string :title
      t.string :image
      t.integer :ord
      t.boolean :enabled
      t.references :swslider, index: true

      t.timestamps null: false
    end
    # add_foreign_key :c80_swiper_sframes, :swsliders
  end
end
