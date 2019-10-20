class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :identification
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
