class CreateAppointmentItems < ActiveRecord::Migration[6.0]
  def change
    create_table :appointment_items do |t|
      t.references :petservice, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
