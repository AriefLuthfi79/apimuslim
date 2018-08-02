class AddColumnToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :image_uri, :string
    add_column :events, :image_mime, :string
  end
end
