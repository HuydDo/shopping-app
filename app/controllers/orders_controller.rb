class OrdersController < ApplicationController
  before_action :require_login, :find_order, only: [:edit,:update]

  def index
    if params[:item_id]
      @orders = Order.where(item_id: params[:item_id])
    else
      @orders = Order.all
    end
  end

  def create
    order = current_user.orders.create(order_params)
    if order
      flash[:notice] = "Order was created"
      redirect_to user_path(order.user)
    else
      flash[:alert] = "Order wasn't created"
      redirect_to item_path(order.item_id)
    end
  end

  def edit
    @item = Item.find_by(id: @order.item_id)
  end

  def update
    @order.update(quantity: params[:order][:quantity],review: params[:order][:review])
    flash[:notice] = "Order was updated"
    redirect_to user_path(current_user)
  end

  def destroy
    Order.find(params[:id]).destroy
    flash[:notice] = "Order was deleted"
    redirect_to user_path(current_user)
  end

  private
  
  def find_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :item_id, :quantity, :review)
  end 
end
