class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :relationships, :name
    add_index :relationships, :moss
    add_index :relationships, :display
    add_index :relationships, :is_display
  end
end
