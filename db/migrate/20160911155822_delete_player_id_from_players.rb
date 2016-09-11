class DeletePlayerIdFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :player_id
  end
end
