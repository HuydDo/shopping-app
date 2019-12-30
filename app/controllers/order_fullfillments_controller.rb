class OrderFullfillmentsController < ApplicationController
  before_action :find_item, only: [:show]


  def index
    @items = Item.all  
  end

  def show
   
  end
  
  def edit
    # raise params.inspect
    @order = Order.find(params[:id])
    @item = Item.find_by(id: @order.item_id)
  end

  def update
   
    # @order.update(shipping_status: params[:order][:shipping_status])
    
    # flash[:notice] = "Shipping Status was updated"
    # redirect_to user_path(current_user)
  end

  def destroy
    # Order.find(params[:id]).destroy
    # flash[:notice] = "Order was deleted"
    # redirect_to user_path(current_user)
  end

  private
  
  def find_item
    @item = Item.find_by(id: params[:id])
  end

  def item_params
    params.require(:order).permit(:shipping_status)
  end
end
