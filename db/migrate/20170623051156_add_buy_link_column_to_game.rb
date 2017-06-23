class AddBuyLinkColumnToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :buy_link, :string
  end
end
