class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :votable, polymorphic: true, index: true
      t.references :user

      t.timestamps
    end
  end
end
