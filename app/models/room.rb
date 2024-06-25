class Room < ApplicationRecord
  extend Enumerize

  has_many :players, dependent: :destroy

  enumerize :status, in: { waiting: 0, playing: 1, finished: 2 }

  validates :status, presence: true
end
