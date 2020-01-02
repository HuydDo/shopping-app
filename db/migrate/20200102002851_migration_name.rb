class MigrationName < ActiveRecord::Migration[6.0]
  def change
    # remove_column :items, :user_id, :integer
    add_foreign_key :items, :users
  end
end
