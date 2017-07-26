class CreateTrims < ActiveRecord::Migration
  def change
    create_table :trims do |t|
      t.string :name, :null => false
    end

    add_index :trims, :name
  end
end
