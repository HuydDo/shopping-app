class ChangeShippingStatusToBeBooleanInOrders < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :shipping_status, :boolean, default: false
  end
end
