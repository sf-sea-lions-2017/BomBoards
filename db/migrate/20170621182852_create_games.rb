class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :number_of_players, null: false
      t.string :playtime, null: false
      
      t.timestamps
    end
  end
end
