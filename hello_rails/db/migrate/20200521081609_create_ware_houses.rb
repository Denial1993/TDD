class CreateWareHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :ware_houses do |t|
      t.references :store, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
