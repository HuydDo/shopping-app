class AddShippingStatusToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :shipping_status, :boolean, default: false
  end
end
