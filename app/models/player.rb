class Player < ApplicationRecord
  validates :position, presence: true
  validates :cur_hp, presence: true
  validates :is_active, presence: true
  belongs_to :character
  belongs_to :role
  belongs_to :user
  has_and_belongs_to_many :games
end