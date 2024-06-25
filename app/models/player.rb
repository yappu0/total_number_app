class Player < ApplicationRecord
  extend Enumerize

  belongs_to :room

  has_many :cards, dependent: :destroy

  enumerize :status, in: { red_team: 0, blue_team: 1, spectator: 2, admin: 3 }

  validates :name, presence: true
end
