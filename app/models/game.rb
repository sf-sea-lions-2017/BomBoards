class Game < ApplicationRecord
  has_many :game_tags
  has_many :tags, through: :game_tags
  has_many :ownerships
  has_many :owners, through: :ownerships, source: 'owner'
  has_many :votes, as: :votable
  has_many :comments, as: :commentable

  validates :name, :description, :number_of_players, :playtime, presence: true
end
