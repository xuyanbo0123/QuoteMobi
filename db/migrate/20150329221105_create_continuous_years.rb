class CreateContinuousYears < ActiveRecord::Migration
  def change
    create_table :continuous_years do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :continuous_years, :name
    add_index :continuous_years, :moss
    add_index :continuous_years, :display
    add_index :continuous_years, :is_display
  end
end
