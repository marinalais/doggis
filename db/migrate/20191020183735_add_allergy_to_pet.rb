class AddAllergyToPet < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :allergy, :boollean
  end
end
