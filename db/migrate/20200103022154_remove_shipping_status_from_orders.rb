class RemoveShippingStatusFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :shipping_status, :boolean
  end
end
