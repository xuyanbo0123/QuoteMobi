class CreateIsSr22s < ActiveRecord::Migration
  def change
    create_table :is_sr22s do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :is_sr22s, :name
    add_index :is_sr22s, :moss
    add_index :is_sr22s, :display
    add_index :is_sr22s, :is_display
  end
end
