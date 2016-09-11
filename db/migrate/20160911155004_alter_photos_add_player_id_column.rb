class AlterPhotosAddPlayerIdColumn < ActiveRecord::Migration
  def change
    add_column :photos, :player_id, :integer
    add_index :photos, :player_id
  end
end
