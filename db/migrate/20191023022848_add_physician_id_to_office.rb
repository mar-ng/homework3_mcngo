class AddPhysicianIdToOffice < ActiveRecord::Migration[6.0]
  def change
    add_column :offices, :physician_id, :integer
  end
end
