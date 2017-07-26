class CreateMaritalStatuses < ActiveRecord::Migration
  def change
    create_table :marital_statuses do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :marital_statuses, :name
    add_index :marital_statuses, :moss
    add_index :marital_statuses, :display
    add_index :marital_statuses, :is_display
  end
end
