class User < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :items, through: :orders

  # has_many :listed_items, foreign_key:"seller_id", class_name:"Item"
  has_many :listed_items, foreign_key:"user_id", class_name:"Item"

  validates :name, uniqueness: true
  validates :name, presence: true
  has_secure_password
end

