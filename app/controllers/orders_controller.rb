class OrdersController < ApplicationController
  before_action :require_login

  def create
    # raise params.inspect
    # order = Order.create(user_id: current_user.id, item_id: params[:item_id], quantity: params[:quantity])
    order = current_user.orders.create(order_params)

    if order
      # response = order.order_item
      # flash[:notice] = response
     
      redirect_to user_path(order.user)
    else
      redirect_to item_path(order.item)
    end
  end

  private
  def order_params
    params.require(:order).permit(:item_id, :quantity)
  end 
end
