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
    # raise params.inspect
    @item = Item.find_by(id: @order.item_id)

    if params[:order][:shipping_status] == '1'
      shipping_status = TRUE;
      # params[:order][:shipping_status] = 1
          # raise params.inspect
    elsif params[:order][:shipping_status] == '0'

      shipping_status = FALSE;

    else
      shipping_status = @order.shipping_status
      # raise params.inspect
    end
    # if @item.user_id     #      
    # raise params.inspect

    #   @order.update(shipping_status: shipping_status)
    # else

      @order.update(quantity: params[:order][:quantity],review: params[:order][:review],shipping_status: shipping_status)
    # end
    flash[:notice] = "Order was updated"
    # raise params.inspect
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
    params.require(:order).permit(:user_id, :item_id, :quantity, :review, :shipping_status)
  end 
end
