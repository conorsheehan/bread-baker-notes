class CreateBreads < ActiveRecord::Migration
  def change
    create_table :breads do |t|
      t.string :name
      t.integer :rating
      t.date :date
      t.string :preferment
      t.integer :room_temp
      t.integer :water_temp

      t.timestamps
    end
  end
end
