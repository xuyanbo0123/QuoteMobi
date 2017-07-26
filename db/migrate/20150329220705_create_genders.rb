class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :genders, :name
    add_index :genders, :moss
    add_index :genders, :display
    add_index :genders, :is_display
  end
end
