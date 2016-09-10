class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.string :name
      t.string :residence
      t.date   :birthdate
      t.string :height
      t.string :weight
      t.string :plays  
      t.string :status
      
      t.timestamps
    end
  end
end
