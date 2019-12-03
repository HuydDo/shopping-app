class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :name
      t.float :price
      t.string :description
      t.timestamps
    end
  end
end
