class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :quantity
      t.integer :review
      t.boolean :delivered, default: false
      t.timestamps
    end
  end
end
