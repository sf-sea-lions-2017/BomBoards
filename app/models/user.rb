class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :ownerships, foreign_key: :owner_id
  has_many :games, through: :ownerships

  #all requests sent by the user
  has_many :friendships

  #all requests received by the user
  has_many :received_friendships, class_name: "Friendship", foreign_key: "friend_id"
  has_many :requests, -> { where accepted: false }, class_name: "Friendship", foreign_key: "friend_id"

  #friend requests received by the user
  has_many :accepted_friends, -> { where(friendships: { accepted: true}) }, through: :received_friendships, source: 'user'
  has_many :pending_friends, -> { where(friendships: { accepted: false}) }, through: :requests, source: 'user'

  #friend requests sent by the user
  has_many :accepted_friend_requests, -> { where(friendships: { accepted: true}) }, through: :friendships, source: 'friend'
  has_many :pending_friend_requests, -> { where(friendships: { accepted: false}) }, through: :friendships, source: 'friend'

  has_many :own_comments, class_name: 'Comment'
  has_many :remarks, as: :commentable, class_name: 'Comment'

  has_many :own_votes, class_name: 'Vote'
  has_many :ratings, as: :votable, class_name: 'Vote'

  has_many :hosted_events, class_name: 'Event', foreign_key: "host_id"


  #gets all friends
  def friends
    accepted_friends | accepted_friend_requests
  end

  #gets all pending friends
  def pending
    pending_friends | pending_friend_requests
  end

  def collection_rating
    self.ratings.count
  end

  def friends_with_game(game)
    friends_with_game = []
    self.friends.each do |friend|
      if friend.games.include?(game)
        friends_with_game << friend
      end
    end
    return friends_with_game
  end
end

