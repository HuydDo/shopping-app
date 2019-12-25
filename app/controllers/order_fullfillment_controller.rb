class Orderfullfillment < ApplicationController
  before_action :find_item, only: [:show]

  def show

  end

  private
  
  def find_item
    @item = Item.find_by(id: params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :user_id)
  end
end
