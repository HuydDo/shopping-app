class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :new, :update]
  def index
    @items = Item.all
  end

  def new

  end

  def create
    Item.create(item_params)
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
    params.requires(:item).permit(:name, :price, :description)
  end
end
