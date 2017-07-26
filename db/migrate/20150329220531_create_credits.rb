class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :credits, :name
    add_index :credits, :moss
    add_index :credits, :display
    add_index :credits, :is_display
  end
end
