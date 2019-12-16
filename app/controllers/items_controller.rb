class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :new, :update]
 
  def index
    @items = Item.all
    # raise params.inspect
    @best_seller = Item.most_orders
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
    # @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description)
  end
end
