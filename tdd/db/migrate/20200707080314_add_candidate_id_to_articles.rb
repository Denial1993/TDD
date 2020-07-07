class AddCandidateIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :candidate_id, :integer
    add_index :articles, :candidate_id
  end
end
