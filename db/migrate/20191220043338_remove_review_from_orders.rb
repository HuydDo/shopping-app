class RemoveReviewFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :review, :integer
  end
end
