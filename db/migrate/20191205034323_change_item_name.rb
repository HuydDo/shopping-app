class ChangeItemName < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :name, :string
    change_column :items, :description, :text
  end
end
