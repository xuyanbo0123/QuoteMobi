class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :lead_id
      t.integer :year_id
      t.integer :make_id
      t.integer :model_id
      t.integer :owner_type_id
      t.integer :vehicle_use_id
      t.integer :annual_mileage_id
      t.integer :commute_day_id
      t.integer :daily_mileage
      t.integer :garage_type_id
      t.integer :coll_deduct_id
      t.integer :comp_deduct_id
      t.column :rid, :bigint

      t.timestamps
    end
    add_index :vehicles, :lead_id

    add_index :vehicles, :year_id
    add_index :vehicles, :make_id
    add_index :vehicles, :model_id
    add_index :vehicles, :owner_type_id
    add_index :vehicles, :vehicle_use_id
    add_index :vehicles, :annual_mileage_id
    add_index :vehicles, :commute_day_id
    add_index :vehicles, :garage_type_id
    add_index :vehicles, :coll_deduct_id
    add_index :vehicles, :comp_deduct_id
  end
end
