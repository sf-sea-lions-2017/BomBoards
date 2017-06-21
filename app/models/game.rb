class Game < ApplicationRecord
  has_many :games_tags
  has_many :tags, through: :games_tags
  has_many :users_games
  has_many :owners, through: :users_games, source: 'user'
  has_many :votes, as: :votable
  has_many :comments, as: :commentable

  validates :name, :description, :number_of_players, :instructions, :playtime, presence: true
end
