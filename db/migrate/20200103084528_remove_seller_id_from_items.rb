class RemoveSellerIdFromItems < ActiveRecord::Migration[6.0]
  def change

    remove_column :items, :seller_id, :integer
  end
end
