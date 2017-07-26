class CreateRequestCoverages < ActiveRecord::Migration
  def change
    create_table :request_coverages do |t|
      t.string :name
      t.string :moss
      t.string :display
      t.boolean :is_display
    end

    add_index :request_coverages, :name
    add_index :request_coverages, :moss
    add_index :request_coverages, :display
    add_index :request_coverages, :is_display
  end
end
