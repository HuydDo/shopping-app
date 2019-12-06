class Order < ApplicationRecord
  belongs_to :item
  belongs_to :user

  def order_item
    "Thanks for ordering the #{self.item.name}!"
  end
end
