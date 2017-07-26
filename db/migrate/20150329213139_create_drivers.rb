class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.integer :lead_id
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.integer :gender_id
      t.integer :marital_status_id
      t.integer :relationship_id
      t.integer :occupation_id
      t.integer :education_id
      t.boolean :is_good_gpa, :default => true
      t.integer :credit_id
      t.boolean :is_bankruptcy, :default => false
      t.integer :age_lic_id
      t.integer :lic_status_id
      t.boolean :driver_training, :default => false
      t.integer :is_sr22_id
      t.column :rid, :bigint
      t.integer :vehicle_id

      t.timestamps
    end
    add_index :drivers, :lead_id

    add_index :drivers, :gender_id
    add_index :drivers, :marital_status_id
    add_index :drivers, :relationship_id
    add_index :drivers, :occupation_id
    add_index :drivers, :education_id
    add_index :drivers, :credit_id
    add_index :drivers, :age_lic_id
    add_index :drivers, :lic_status_id
    add_index :drivers, :is_sr22_id
  end
end
