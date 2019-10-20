class RemoveOrderItemFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :orderitem, null: false, foreign_key: true
  end
end
