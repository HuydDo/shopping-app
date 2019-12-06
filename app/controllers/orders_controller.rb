class OrdersController < ApplicationController
  before_action :require_login

  def create
    # raise params.inspect
    order = Order.create(user_id: current_user.id, item_id: params[:item_id] )
    if order
      respond = ride.order_item
      flash[:notice] = reponse
      redirect_to user_path(order.user)
    else
      redirect_to item_path(order.item)
    end
  end
end