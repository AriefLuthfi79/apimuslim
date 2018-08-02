class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.bigint :event_id
      t.bigint :user_id
    end

    add_index :likes, :event_id
    add_index :likes, :user_id
  end
end
