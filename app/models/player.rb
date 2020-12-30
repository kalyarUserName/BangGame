class Player <ApplicationRecord
  validates :position, presence: true
  validates :cur_hp, presence: true
  validates :is_active, presence: true
  belongs_to :character
  belongs_to :role
  belongs_to :card
  belongs_to :user
end