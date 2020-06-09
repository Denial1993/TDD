class CreateSuperbikes < ActiveRecord::Migration[5.1]
  def change
    create_table :superbikes do |t|
      t.string :brand
      t.string :product
      t.integer :exhaust
      t.string :specification_of_tyre
      t.integer :height_of_seat
      t.integer :price
      t.integer :votes,default: 0

      t.timestamps
    end
  end
end
