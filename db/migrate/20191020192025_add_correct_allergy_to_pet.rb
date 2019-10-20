class AddCorrectAllergyToPet < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :allergy, :boolean
  end
end
