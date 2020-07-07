class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :title
      t.string :tel
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
