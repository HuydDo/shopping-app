class OrderFullfillmentsController < ApplicationController
  before_action :find_item, only: [:show, :edit]


  def index
    @items = Item.all  
  end

  def show
   
  end
  
  def edit
    @order = Order.find(params[:id])
  end

  def update
 
  end

  def destroy
   
  end

  private
  
  def find_item
    @item = Item.find_by(id: params[:id])
  end

  def item_params
    params.require(:order).permit(:shipping_status)
  end
end
