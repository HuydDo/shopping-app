class User < ApplicationRecord
  has_many :orders
  has_many :items, through: :orders

  # validates :name, uniqueness: true
  has_secure_password

  # def order_item
  #   "Thanks for ordering the #{self.item.name}! 
  #   Subtotal( # items): $#{total_amount}"
  # end

  # def total_amount
  #   self.update(:quantity => self.quantity)
  #   total = (self.quantity).to_f * self.item.price
  # end
end
