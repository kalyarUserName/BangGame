class User < ApplicationRecord
  validates :nickname, presence: true
  validates :password, presence: true
  has_many :players
end