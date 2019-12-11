class OrdersController < ApplicationController
  before_action :require_login, :find_item, only: [:edit,:update]

  def create
    # raise params.inspect 
    # raise order_params.inspect
    # order = Order.create(user_id: current_user.id, item_id: params[:item_id], quantity: params[:quantity])
    # order = Order.create(order_params)    
    order = current_user.orders.create(order_params)
    # raise order.inspect
    if order
      # response = order.order_item
      # flash[:notice] = response
      # raise params.inspect  
     
      redirect_to user_path(order.user)
    else
      redirect_to item_path(order.item_id)
    end
  end

  def edit
    @item = Item.find_by(id: @order.item_id)
  end

  def update
    # raise params.inspect
    @order.update(quantity: params[:order][:quantity])
    redirect_to user_path(current_user)
  end

  def destroy
    Order.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end

  private
  def find_item
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :item_id, :quantity, :review, :delivered)
  end 
end
