class RemoveDeliveredFromOrders < ActiveRecord::Migration[6.0]
  def change

    remove_column :orders, :delivered, :integer
  end
end
