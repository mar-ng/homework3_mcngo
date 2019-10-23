class CreatePhysicians < ActiveRecord::Migration[6.0]
  def change
    create_table :physicians do |t|
      t.string :physician_name
      t.string :physician_specialty

      t.timestamps
    end
  end
end
