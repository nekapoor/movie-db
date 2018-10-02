class AddSeens < ActiveRecord::Migration[5.2]
  def change
    create_table :seens do |t|
      t.integer :movie_id, index: true
      t.timestamps
    end
  end
end
