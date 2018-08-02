class DropColumnEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :register
  end
end
