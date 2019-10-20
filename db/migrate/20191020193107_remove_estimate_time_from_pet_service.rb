class RemoveEstimateTimeFromPetService < ActiveRecord::Migration[6.0]
  def change

    remove_column :pet_services, :estimate_time, :integer
  end
end
