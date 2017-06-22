class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :ownerships, foreign_key: :owner_id
  has_many :games, through: :ownerships

  has_many :friend_requests
  # has_many :pending_friend_requests, class_name: 'FriendRequest', foreign_key: 'friend_id'

  has_many :own_comments, class_name: 'Comment'
  has_many :remarks, as: :commentable, class_name: 'Comment'

  has_many :own_votes, class_name: 'Vote'
  has_many :ratings, as: :votable, class_name: 'Vote'
end

# def self.collection_rating
#   self.ratings.count
# end
