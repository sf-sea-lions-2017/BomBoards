class User < ApplicationRecord
  has_many :ownerships, foreign_key: :owner_id
  has_many :games, through: :ownerships

  has_many :friendships
  has_many :received_friendships, class_name: "Friendship", foreign_key: "friend_id"

  has_many :own_comments, class_name: 'Comment'
  has_many :remarks, as: :commentable, class_name: 'Comment'

  has_many :own_votes, class_name: 'Vote'
  has_many :ratings, as: :votable, class_name: 'Vote'
end

# def self.collection_rating
#   self.ratings.count
# end
