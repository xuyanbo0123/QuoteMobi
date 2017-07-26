class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :occupations, :name
    add_index :occupations, :moss
    add_index :occupations, :display
    add_index :occupations, :is_display
  end
end
