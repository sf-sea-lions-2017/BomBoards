class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string name
      t.text description
      t.integer number_of_players
      t.text instructions
      t.integer playtime
      t.timestamps
    end
  end
end
