class Card < ApplicationRecord
  belongs_to :player

  validates :value, inclusion: { in: [1, 5, 10] }
end
