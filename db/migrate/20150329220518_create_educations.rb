class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :educations, :name
    add_index :educations, :moss
    add_index :educations, :display
    add_index :educations, :is_display
  end
end
