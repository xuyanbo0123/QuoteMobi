class CreateVehicleUses < ActiveRecord::Migration
  def change
    create_table :vehicle_uses do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :vehicle_uses, :name
    add_index :vehicle_uses, :moss
    add_index :vehicle_uses, :display
    add_index :vehicle_uses, :is_display
  end
end
