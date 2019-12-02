class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :name
      t.integer :quantity 
      t.float :price 
      t.integer :review
      t.timestamps
    end
  end
end
