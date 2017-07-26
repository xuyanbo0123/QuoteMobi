class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :lead_id
      t.string :address1
      t.string :address2
      t.string :zip
      t.string :city
      t.string :state
      t.string :email
      t.string :phone
      t.integer :residence_status_id
      t.integer :residence_year_id
      t.integer :residence_month_id, :default => 1

      t.timestamps
    end
    add_index :contacts, :lead_id

    add_index :contacts, :residence_status_id
    add_index :contacts, :residence_year_id
    add_index :contacts, :residence_month_id
  end
end
