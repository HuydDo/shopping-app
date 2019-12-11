module UsersHelper
  def subtotal(user)
    item_count = 0
    subtotal = 0.0
    user.orders.each do |order| 
        item_count += 1
        subtotal += order.item.price * order.quantity
    end
    render partial: 'subtotal', locals: {item_count: item_count, subtotal: subtotal}
  end
end
