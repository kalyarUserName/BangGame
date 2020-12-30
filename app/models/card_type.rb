class Card_type <ApplicationRecord
  validates :type, presence: true
  has_many :cards
end