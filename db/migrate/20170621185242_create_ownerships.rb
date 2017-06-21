class CreateOwnerships < ActiveRecord::Migration[5.1]
  def change
    create_table :ownerships do |t|
      t.references :owner, null: false
      t.references :game, null: false
      
      t.timestamps
    end
  end
end
