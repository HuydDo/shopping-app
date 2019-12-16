class OrdersController < ApplicationController
  before_action :require_login, :find_item, only: [:edit,:update]

  def index
    # raise params.inspect
    @orders = Order.where(item_id:params[:item_id])
  end

  def create
    # raise params.inspect 
    # raise order_params.inspect
    # order = Order.create(user_id: current_user.id, item_id: params[:item_id], quantity: params[:quantity])
    # order = Order.create(order_params)    
    order = current_user.orders.create(order_params)
    # raise order.inspect
    if order
      # response = order.order_item
      flash[:notice] = "Order was created"
      # raise params.inspect  
     
      redirect_to user_path(order.user)
    else
      redirect_to item_path(order.item_id)
    end
  end

  def edit
    # raise params.inspect  
    @item = Item.find_by(id: @order.item_id)
    # if params[:item_id]
    #   item = Item.find_by(id: params[:item_id])
    #   if item.nil?
    #     redirect_to items_path, flash[:alert] = "Item not found."
    #   else
    #     @order = item.orders.find_by(id: params[:id])
    #     redirect_to item_orders_path(item), flash[:alert] = "Order not found." if @order.nil?
    #   end
    # else
    #   @order = Order.find_by(id: @order.item_id)
    # end
  end

  def update
    # raise params.inspect
    # @order.update(quantity: params[:order][:quantity])

    #for nested resources
    @order.update(quantity: params[:order][:quantity],review: params[:order][:review])

    redirect_to user_path(current_user)
  end

  # for nested resources
  def new
    @order = Order.new(item_id: params[:item_id])
  end


  def destroy
    Order.find(params[:id]).destroy
    flash[:notice] = "Order was deleted"
    redirect_to user_path(current_user)
  end

  private
  def find_item
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :item_id, :quantity, :review)
  end 
end
