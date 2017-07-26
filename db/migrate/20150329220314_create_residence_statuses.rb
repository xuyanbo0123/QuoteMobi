class CreateResidenceStatuses < ActiveRecord::Migration
  def change
    create_table :residence_statuses do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :residence_statuses, :name
    add_index :residence_statuses, :moss
    add_index :residence_statuses, :display
    add_index :residence_statuses, :is_display
  end
end
