class AddIndexToEvents < ActiveRecord::Migration[5.2]
  def change
    add_index :likes, [:event_id, :user_id], unique: true
  end
end
