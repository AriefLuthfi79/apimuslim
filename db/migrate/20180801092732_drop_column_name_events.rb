class DropColumnNameEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :end_at
  end
end
