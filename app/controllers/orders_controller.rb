class OrdersController < ApplicationController
  before_action :require_login

  def create
    
    # order = Order.create(user_id: current_user.id, item_id: params[:item_id], quantity: params[:quantity])
    order = current_user.orders.create(order_params)
    raise order.inspect
    if order
      # response = order.order_item
      # flash[:notice] = response
      raise params.inspect
     
      redirect_to user_path(order.user)
    else
      redirect_to item_path(order.item_id)
    end
  end

  private
  def order_params
    params.require(:order).permit(:item_id, :quantity)
  end 
end
