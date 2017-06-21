class Ownership < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  belongs_to :game
end
