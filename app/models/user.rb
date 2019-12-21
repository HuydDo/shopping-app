class User < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :items, through: :orders

  validates :name, uniqueness: true
  validates :name, presence: true
  has_secure_password
end
