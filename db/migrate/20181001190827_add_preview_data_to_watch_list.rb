class AddPreviewDataToWatchList < ActiveRecord::Migration[5.2]
  def change
    add_column :watch_lists, :title, :string
    add_column :watch_lists, :overview, :text
    add_column :watch_lists, :image_path, :string
  end
end
