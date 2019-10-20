class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.decimal :quantity
      t.decimal :value
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
