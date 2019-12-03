class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.integer :order_id
      t.text :name
      t.float :price
      t.integer :review
      t.timestamps
    end
  end
end
