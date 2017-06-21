class FriendRequest < ApplicationRecord
  belongs_to :user, null: false

end
