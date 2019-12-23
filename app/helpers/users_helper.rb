module UsersHelper
  def subtotal(user)
    item_count = 0
    total = 0.0
    
    user.orders.each do |order| 
      item_count += order.quantity
      total += order.item.price * order.quantity
    end
    render partial: 'subtotal', locals: {item_count: item_count, subtotal: total}
  end
end
