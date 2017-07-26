class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :moss_code
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :companies, :name
    add_index :companies, :moss
    add_index :companies, :moss_code
    add_index :companies, :display
    add_index :companies, :is_display
  end
end
