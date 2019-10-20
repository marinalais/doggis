class CreatePetServices < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_services do |t|
      t.integer :duration
      t.decimal :price
      t.string :name
      t.string :description
      t.integer :estimate_time
      t.decimal :pataz_value_free
      t.decimal :pataz_amount
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
