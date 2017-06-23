class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'
  belongs_to :played_game, class_name: 'Game'

end
