class AddShippingStatusToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :shipping_status, :string
  end
end
