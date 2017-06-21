class CreateFriendRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :friend_requests do |t|
      t.references :user, null: false
      t.references :friend, null: false
      t.boolean :approved, default: false
      
      t.timestamps
    end
  end
end
