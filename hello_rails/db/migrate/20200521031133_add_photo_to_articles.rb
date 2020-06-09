class AddPhotoToArticles < ActiveRecord::Migration[5.1]
  def change
  	add_column :articles,:photo,:string
  end
end
