class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointmentdate
      t.integer :status
      t.decimal :value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
