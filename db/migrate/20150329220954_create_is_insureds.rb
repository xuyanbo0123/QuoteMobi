class CreateIsInsureds < ActiveRecord::Migration
  def change
    create_table :is_insureds do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :is_insureds, :name
    add_index :is_insureds, :moss
    add_index :is_insureds, :display
    add_index :is_insureds, :is_display
  end
end
