class User < ApplicationRecord
  has_many :orders
  has_many :items, through: :orders

  validates :username, uniqueness: true
  has_secure_password
end
