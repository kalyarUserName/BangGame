class Effect < ApplicationRecord
  validates :effect, presence: true
  has_many :cards
end