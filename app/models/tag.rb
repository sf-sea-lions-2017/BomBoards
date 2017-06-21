class Tag < ApplicationRecord
  has_many :game_tags
  has_many :games, through: :game_tags

  validates :name, presence: true
end
