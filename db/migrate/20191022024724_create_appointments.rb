class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :appointment_id
      t.date :appointment_date
      t.references :physician_name, null: false, foreign_key: true
      t.references :patient_name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
