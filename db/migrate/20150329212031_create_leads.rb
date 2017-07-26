class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :token
      t.string :leadid_token
      t.integer :status, :default => 0
      t.integer :visit_id
      t.boolean :leadid_tcpa_disclosure, :default => true
      t.text :response

      t.timestamps
    end
  end
end
