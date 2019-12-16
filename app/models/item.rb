class Item < ApplicationRecord
  scope :most_orders, -> {all.order(orders: :DESC).limit(1).first}
  scope :seller_choice, -> {all.order(reviews: :DESC).limit(1).first}
  
  has_many :orders
  has_many :users, through: :orders
end
