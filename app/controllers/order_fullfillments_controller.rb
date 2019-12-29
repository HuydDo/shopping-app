class OrderFullfillmentsController < ApplicationController
  before_action :find_item, only: [:show]


  def index
    @items = Item.all  
  end

  def show
   
  end
  
  def edit
   
  end

  def update
    @item.update(name: params[:item][:name],price: params[:item][:price])
    flash[:notice] = "Item was updated"
    redirect_to user_path(current_user)
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:notice] = "Item was deleted"
    redirect_to user_path(current_user)
  end

  private
  
  def find_item
    @item = Item.find_by(id: params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :user_id)
  end
end
