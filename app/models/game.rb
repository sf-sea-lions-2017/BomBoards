class Game < ApplicationRecord
  has_many :games_tags
  has_many :tags, through: :games_tags
  has_many :ownerships
  has_many :owners, through: :ownerships, source: 'owner'
  has_many :votes, as: :votable
  has_many :comments, as: :commentable

  validates :name, :description, :number_of_players, :instructions, :playtime, presence: true
end
