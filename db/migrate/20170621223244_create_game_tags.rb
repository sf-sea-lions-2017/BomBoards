class CreateGameTags < ActiveRecord::Migration[5.1]
  def change
    create_table :game_tags do |t|
      t.references :game, null: false
      t.refernces :tag, null: false
      t.timestamps
    end
  end
end
