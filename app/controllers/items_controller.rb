class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit]
 
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
    params.require(:item).permit(:name, :price, :description, :user_id)
  end
end

