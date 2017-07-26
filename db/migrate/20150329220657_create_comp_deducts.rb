class CreateCompDeducts < ActiveRecord::Migration
  def change
    create_table :comp_deducts do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :comp_deducts, :name
    add_index :comp_deducts, :moss
    add_index :comp_deducts, :display
    add_index :comp_deducts, :is_display
  end
end
