class Order < ApplicationRecord
  belongs_to :item
  belongs_to :user

  def order_item
    "Thanks for ordering the #{self.item.name}! 
    Subtotal: #{total_amount}"
  end

  def total_amount
    self.update(:quantity => self.quantity)
    total = (self.quantity).to_f * self.item.price
  end
end
