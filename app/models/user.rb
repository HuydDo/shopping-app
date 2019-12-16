class User < ApplicationRecord
  has_many :orders
  has_many :items, through: :orders

  validates :name, uniqueness: true
  # validates :name, presence: true
  # validates :email, presence: true
  has_secure_password

end
