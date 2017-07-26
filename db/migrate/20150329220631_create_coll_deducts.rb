class CreateCollDeducts < ActiveRecord::Migration
  def change
    create_table :coll_deducts do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :coll_deducts, :name
    add_index :coll_deducts, :moss
    add_index :coll_deducts, :display
    add_index :coll_deducts, :is_display
  end
end
