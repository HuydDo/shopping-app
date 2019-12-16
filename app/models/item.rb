class Item < ApplicationRecord
  scope :most_orders, -> {all.order(orders: :DESC).limit(1).first}
  scope :seller_choice, -> {all.order(reviews: :DESC).limit(1).first}
  

  

  scope :most_orders, -> {(
    select("items.name, sum(orders.quantity) as orders_sum")
    .joins(:orders)
    .group("items.id")
    .order("orders_sum DESC")
    .limit(1)
    )}

  scope :most_reviews, -> {(
  select("items.name, sum(orders.review) as reviews_sum")
  .joins(:orders)
  .group("items.id")
  .order("reviews_sum DESC")
  .limit(1)
  )}

  
    has_many :orders
  has_many :users, through: :orders
end
