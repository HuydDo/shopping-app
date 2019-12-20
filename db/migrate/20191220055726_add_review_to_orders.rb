class AddReviewToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :review, :integer
  end
end
