class User < ApplicationRecord
  has_many :items
  has_many :orders, through: :item
  
  validate :username, uniqueness: true
  has_secure_password
end
