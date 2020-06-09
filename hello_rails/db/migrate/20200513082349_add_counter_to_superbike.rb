class AddCounterToSuperbike < ActiveRecord::Migration[5.1]
  def change
    add_column :superbikes, :vote_logs_count, :integer
  end
end
