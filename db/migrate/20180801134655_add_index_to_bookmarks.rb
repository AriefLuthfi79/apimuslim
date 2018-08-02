class AddIndexToBookmarks < ActiveRecord::Migration[5.2]
  def change
    add_index :bookmarks, [:event_id, :user_id], unique: true
  end
end
