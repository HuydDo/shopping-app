class Item < ApplicationRecord
  scope :most_orders, -> {all.order(orders: :DESC).limit(1).first}
  scope :seller_choice, -> {all.order(reviews: :DESC).limit(1).first}
  

  

  # scope :most_orders, -> {(
  #   select("items.name, count(orders.id) as orders_count")
  #   .joins(:orders)
  #   .group("items.id")
  #   .order("orders_count DESC")
  #   .limit(1)
  #   )}

    has_many :orders
  has_many :users, through: :orders
end
