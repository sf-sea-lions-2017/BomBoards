class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'
  belongs_to :played_game, class_name: 'Game'

  has_many :reservations
  has_many :attendees, through: :reservations, source: 'attendee'

end
