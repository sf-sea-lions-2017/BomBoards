class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :host
      t.references :played_game
      t.string     :title, null: false
      t.string     :location, null: false
      t.datetime   :date, null: false

      t.timestamps
    end
  end
end
