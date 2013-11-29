class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.integer :year
      t.string :style
      t.string :image

      t.timestamps
    end
  end
end
