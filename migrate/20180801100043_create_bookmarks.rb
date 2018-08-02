class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.bigint :event_id
      t.bigint :user_id
    end

    add_index :bookmarks, :event_id
    add_index :bookmarks, :user_id
  end
end
