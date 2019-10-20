class RemoveAllergyFromPet < ActiveRecord::Migration[6.0]
  def change

    remove_column :pets, :allergy
  end
end
