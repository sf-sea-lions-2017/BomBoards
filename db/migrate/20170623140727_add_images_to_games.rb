class AddImagesToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :image_link, :string
  end
end
