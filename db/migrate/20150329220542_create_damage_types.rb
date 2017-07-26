class CreateDamageTypes < ActiveRecord::Migration
  def change
    create_table :damage_types do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :damage_types, :name
    add_index :damage_types, :moss
    add_index :damage_types, :display
    add_index :damage_types, :is_display
  end
end
