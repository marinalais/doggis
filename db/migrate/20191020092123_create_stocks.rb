class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.integer :stockoperation
      t.string :description
      t.decimal :quantity
      t.datetime :operationdate
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
