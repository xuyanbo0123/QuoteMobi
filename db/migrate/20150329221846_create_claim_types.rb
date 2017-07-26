class CreateClaimTypes < ActiveRecord::Migration
  def change
    create_table :claim_types do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :claim_types, :name
    add_index :claim_types, :moss
    add_index :claim_types, :display
    add_index :claim_types, :is_display
  end
end
