class CreateAnnualMileages < ActiveRecord::Migration
  def change
    create_table :annual_mileages do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :annual_mileages, :name
    add_index :annual_mileages, :moss
    add_index :annual_mileages, :display
    add_index :annual_mileages, :is_display
  end
end
