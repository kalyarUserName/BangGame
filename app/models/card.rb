class Card < ApplicationRecord
  validates :name, presence: true
  validates :number, presence: true
  validates :range, presence: true
  validates :suit, presence: true
  validates :place, presence: true
  belongs_to :card_type
  belongs_to :effect
  belongs_to :player
end