class ItemsController < ApplicationController
  before_action :find_item, only: [ :edit, :update, :show]
 
  def index
    @items = Item.all
    @best_seller = Item.most_orders.first
    @seller_choice = Item.most_reviews.first
  end

  def show
    @order = Order.new
  end

  def new
    @item = Item.new
  end

  def edit
    # raise params.inspect
    # @order = Order.find_by(item_id: params[:id])
  end
  
  def update
    #  raise params.inspect
    @item.update(name: params[:item][:name], price: params[:item][:price], description: params[:item][:description], shipping_status: params[:item][:shipping_status])
    # @order.update(shipping_status: params[:order][:shipping_status])
    flash[:notice] = "Item was updated"
    redirect_to order_fullfillments_path
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:notice] = "Item was deleted"
    redirect_to user_path(current_user)
  end

  def create 
    # raise params.inspect
    item = Item.create(item_params)
    # item = current_user.items.create(item_params)
    # raise params.inspect
    if item
      flash[:notice] = "Item was created"
      redirect_to item_path(item)
    else
      flash[:alert] = "Item wasn't created"
      redirect_to items_path
    end
  end

  private 
  
  def find_item
    @item = Item.find_by(id: params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :user_id, :shipping_status)
  end
end

