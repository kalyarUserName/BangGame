class Character < ApplicationRecord
  validates :name, presence: true
  validates :hp, presence: true
  has_many :players
end