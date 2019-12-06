class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new

  end

  def create
    
  end

  def show
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
    params.requires(:itme).permit(:name, :price, :description)
  end
end
