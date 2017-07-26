class CreateLicStatuses < ActiveRecord::Migration
  def change
    create_table :lic_statuses do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :lic_statuses, :name
    add_index :lic_statuses, :moss
    add_index :lic_statuses, :display
    add_index :lic_statuses, :is_display
  end
end
