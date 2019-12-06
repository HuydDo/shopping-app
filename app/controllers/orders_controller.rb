class OrdersController < ApplicationController
  before_action :require_login

  def create
    raise order_params.inspect
    order = Order.create(user_id: current_user.id, item_id: params[:attraction_id] )
    redirect_to item_path(order.item)
  end
end