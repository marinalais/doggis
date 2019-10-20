class AddCustomerToPet < ActiveRecord::Migration[6.0]
  def change
    add_reference :pets, :customer, null: true, foreign_key: true
  end
end
