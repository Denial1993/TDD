class CreateJoinTableForStoreAndProduct < ActiveRecord::Migration[5.1]
  def change
  	create_table :products_stores,id: false do |t|
  		t.belongs_to :product ,index: true
  		t.belongs_to :store,index: true
  	end
  end
end
