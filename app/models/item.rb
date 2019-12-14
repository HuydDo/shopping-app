class Item < ApplicationRecord
  scope :best_seller, -> {all.order(orders: :DESC).limit(1).first}
  scope :Seller_recomend, -> {all.order(orders: :DESC).limit(1).first}
  has_many :orders
  has_many :users, through: :orders

  #show which item was order the most
  
end
