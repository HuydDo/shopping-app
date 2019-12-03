class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.integer :qualtity
      t.timestamps
    end
  end
end
