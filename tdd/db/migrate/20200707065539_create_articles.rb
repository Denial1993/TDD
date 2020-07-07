class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :is_online

      t.timestamps
    end
  end
end

#如果想改變 migrate的 環境:
#bin/rails db:migrate RAILS_ENV=production