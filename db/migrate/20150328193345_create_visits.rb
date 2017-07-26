class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :uuid
      t.string :ip
      t.string :agent
      t.string :device
      t.string :gclid
      t.integer :geo_id
      t.integer :geo_interest_id

      t.timestamps
    end
  end
end
