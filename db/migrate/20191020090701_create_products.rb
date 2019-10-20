class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :description
      t.decimal :quantity
      t.string :measury
      t.decimal :price

      t.timestamps
    end
  end
end
