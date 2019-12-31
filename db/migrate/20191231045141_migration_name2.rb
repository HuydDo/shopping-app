class MigrationName2 < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :seller_id, :integer
    add_foreign_key :items, :users
  end
end
