class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.string :name
    end

    add_index :makes, :name
  end
end
