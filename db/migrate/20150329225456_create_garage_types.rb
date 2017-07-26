class CreateGarageTypes < ActiveRecord::Migration
  def change
    create_table :garage_types do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :garage_types, :name
    add_index :garage_types, :moss
    add_index :garage_types, :display
    add_index :garage_types, :is_display
  end
end
