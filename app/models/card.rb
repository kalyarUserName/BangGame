class Card < ApplicationRecord
  validates :name, presence: true
  validates :number, presence: true
  validates :suit, presence: true
  validates :place, presence: true
  belongs_to :effect
end