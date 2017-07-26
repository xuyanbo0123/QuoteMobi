class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.integer :lead_id
      t.integer :request_coverage_id
      t.integer :is_insured_id
      t.integer :company_id
      t.integer :years_with_company_id
      t.integer :months_with_company, :default => 0
      t.date :expiration_date
      t.integer :continuous_year_id
      t.integer :continuous_month, :default => 0

      t.timestamps
    end
    add_index :policies, :lead_id

    add_index :policies, :request_coverage_id
    add_index :policies, :is_insured_id
    add_index :policies, :company_id
    add_index :policies, :years_with_company_id
    add_index :policies, :continuous_year_id
  end
end
