class AddSuperbikeIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :superbike_id, :integer
    add_index :articles, :superbike_id
  end
end
