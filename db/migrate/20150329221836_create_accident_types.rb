class CreateAccidentTypes < ActiveRecord::Migration
  def change
    create_table :accident_types do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :accident_types, :name
    add_index :accident_types, :moss
    add_index :accident_types, :display
    add_index :accident_types, :is_display
  end
end
