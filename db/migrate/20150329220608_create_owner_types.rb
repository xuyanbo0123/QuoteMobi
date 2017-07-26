class CreateOwnerTypes < ActiveRecord::Migration
  def change
    create_table :owner_types do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :owner_types, :name
    add_index :owner_types, :moss
    add_index :owner_types, :display
    add_index :owner_types, :is_display
  end
end
