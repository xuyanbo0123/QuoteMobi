class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.string :name
    end

    add_index :years, :name
  end
end
