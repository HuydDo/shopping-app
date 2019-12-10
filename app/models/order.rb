class Order < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :quantity, presence: true

  
end
