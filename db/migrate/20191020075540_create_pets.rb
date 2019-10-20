class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :pettype
      t.integer :petsize
      t.string :description
      t.boolean :allows_photo

      t.timestamps
    end
  end
end
