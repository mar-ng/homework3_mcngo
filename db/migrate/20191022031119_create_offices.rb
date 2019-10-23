class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :office_street_address
      t.integer :office_zip
      t.integer :office_phone

      t.timestamps
    end
  end
end
