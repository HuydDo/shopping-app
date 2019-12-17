class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :new, :update]
 
  def index
    @items = Item.all
    @best_seller = Item.most_orders.first
    @seller_choice = Item.most_reviews.first
  end

  def show
    @order = Order.new
  end

  def edit
  end

  def update
  end

  private 
  def find_item
    @item = Item.find_by(id: params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description)
  end
end
