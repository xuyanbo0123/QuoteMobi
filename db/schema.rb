# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150329232059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accident_types", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "accident_types", ["display"], name: "index_accident_types_on_display", using: :btree
  add_index "accident_types", ["is_display"], name: "index_accident_types_on_is_display", using: :btree
  add_index "accident_types", ["moss"], name: "index_accident_types_on_moss", using: :btree
  add_index "accident_types", ["name"], name: "index_accident_types_on_name", using: :btree

  create_table "age_lics", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "age_lics", ["display"], name: "index_age_lics_on_display", using: :btree
  add_index "age_lics", ["is_display"], name: "index_age_lics_on_is_display", using: :btree
  add_index "age_lics", ["moss"], name: "index_age_lics_on_moss", using: :btree
  add_index "age_lics", ["name"], name: "index_age_lics_on_name", using: :btree

  create_table "annual_mileages", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "annual_mileages", ["display"], name: "index_annual_mileages_on_display", using: :btree
  add_index "annual_mileages", ["is_display"], name: "index_annual_mileages_on_is_display", using: :btree
  add_index "annual_mileages", ["moss"], name: "index_annual_mileages_on_moss", using: :btree
  add_index "annual_mileages", ["name"], name: "index_annual_mileages_on_name", using: :btree

  create_table "cars", force: true do |t|
    t.integer "year_id",  null: false
    t.integer "make_id",  null: false
    t.integer "model_id", null: false
    t.integer "trim_id",  null: false
  end

  add_index "cars", ["make_id"], name: "index_cars_on_make_id", using: :btree
  add_index "cars", ["model_id"], name: "index_cars_on_model_id", using: :btree
  add_index "cars", ["trim_id"], name: "index_cars_on_trim_id", using: :btree
  add_index "cars", ["year_id"], name: "index_cars_on_year_id", using: :btree

  create_table "claim_types", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "claim_types", ["display"], name: "index_claim_types_on_display", using: :btree
  add_index "claim_types", ["is_display"], name: "index_claim_types_on_is_display", using: :btree
  add_index "claim_types", ["moss"], name: "index_claim_types_on_moss", using: :btree
  add_index "claim_types", ["name"], name: "index_claim_types_on_name", using: :btree

  create_table "coll_deducts", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "coll_deducts", ["display"], name: "index_coll_deducts_on_display", using: :btree
  add_index "coll_deducts", ["is_display"], name: "index_coll_deducts_on_is_display", using: :btree
  add_index "coll_deducts", ["moss"], name: "index_coll_deducts_on_moss", using: :btree
  add_index "coll_deducts", ["name"], name: "index_coll_deducts_on_name", using: :btree

  create_table "commute_days", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "commute_days", ["display"], name: "index_commute_days_on_display", using: :btree
  add_index "commute_days", ["is_display"], name: "index_commute_days_on_is_display", using: :btree
  add_index "commute_days", ["moss"], name: "index_commute_days_on_moss", using: :btree
  add_index "commute_days", ["name"], name: "index_commute_days_on_name", using: :btree

  create_table "comp_deducts", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "comp_deducts", ["display"], name: "index_comp_deducts_on_display", using: :btree
  add_index "comp_deducts", ["is_display"], name: "index_comp_deducts_on_is_display", using: :btree
  add_index "comp_deducts", ["moss"], name: "index_comp_deducts_on_moss", using: :btree
  add_index "comp_deducts", ["name"], name: "index_comp_deducts_on_name", using: :btree

  create_table "companies", force: true do |t|
    t.string  "name"
    t.integer "moss_code"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "companies", ["display"], name: "index_companies_on_display", using: :btree
  add_index "companies", ["is_display"], name: "index_companies_on_is_display", using: :btree
  add_index "companies", ["moss"], name: "index_companies_on_moss", using: :btree
  add_index "companies", ["moss_code"], name: "index_companies_on_moss_code", using: :btree
  add_index "companies", ["name"], name: "index_companies_on_name", using: :btree

  create_table "contacts", force: true do |t|
    t.integer  "lead_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "zip"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.string   "phone"
    t.integer  "residence_status_id"
    t.integer  "residence_year_id"
    t.integer  "residence_month_id",  default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["lead_id"], name: "index_contacts_on_lead_id", using: :btree
  add_index "contacts", ["residence_month_id"], name: "index_contacts_on_residence_month_id", using: :btree
  add_index "contacts", ["residence_status_id"], name: "index_contacts_on_residence_status_id", using: :btree
  add_index "contacts", ["residence_year_id"], name: "index_contacts_on_residence_year_id", using: :btree

  create_table "continuous_years", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "continuous_years", ["display"], name: "index_continuous_years_on_display", using: :btree
  add_index "continuous_years", ["is_display"], name: "index_continuous_years_on_is_display", using: :btree
  add_index "continuous_years", ["moss"], name: "index_continuous_years_on_moss", using: :btree
  add_index "continuous_years", ["name"], name: "index_continuous_years_on_name", using: :btree

  create_table "credits", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "credits", ["display"], name: "index_credits_on_display", using: :btree
  add_index "credits", ["is_display"], name: "index_credits_on_is_display", using: :btree
  add_index "credits", ["moss"], name: "index_credits_on_moss", using: :btree
  add_index "credits", ["name"], name: "index_credits_on_name", using: :btree

  create_table "damage_types", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "damage_types", ["display"], name: "index_damage_types_on_display", using: :btree
  add_index "damage_types", ["is_display"], name: "index_damage_types_on_is_display", using: :btree
  add_index "damage_types", ["moss"], name: "index_damage_types_on_moss", using: :btree
  add_index "damage_types", ["name"], name: "index_damage_types_on_name", using: :btree

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "drivers", force: true do |t|
    t.integer  "lead_id"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.integer  "gender_id"
    t.integer  "marital_status_id"
    t.integer  "relationship_id"
    t.integer  "occupation_id"
    t.integer  "education_id"
    t.boolean  "is_good_gpa",                 default: true
    t.integer  "credit_id"
    t.boolean  "is_bankruptcy",               default: false
    t.integer  "age_lic_id"
    t.integer  "lic_status_id"
    t.boolean  "driver_training",             default: false
    t.integer  "is_sr22_id"
    t.integer  "rid",               limit: 8
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drivers", ["age_lic_id"], name: "index_drivers_on_age_lic_id", using: :btree
  add_index "drivers", ["credit_id"], name: "index_drivers_on_credit_id", using: :btree
  add_index "drivers", ["education_id"], name: "index_drivers_on_education_id", using: :btree
  add_index "drivers", ["gender_id"], name: "index_drivers_on_gender_id", using: :btree
  add_index "drivers", ["is_sr22_id"], name: "index_drivers_on_is_sr22_id", using: :btree
  add_index "drivers", ["lead_id"], name: "index_drivers_on_lead_id", using: :btree
  add_index "drivers", ["lic_status_id"], name: "index_drivers_on_lic_status_id", using: :btree
  add_index "drivers", ["marital_status_id"], name: "index_drivers_on_marital_status_id", using: :btree
  add_index "drivers", ["occupation_id"], name: "index_drivers_on_occupation_id", using: :btree
  add_index "drivers", ["relationship_id"], name: "index_drivers_on_relationship_id", using: :btree

  create_table "educations", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "educations", ["display"], name: "index_educations_on_display", using: :btree
  add_index "educations", ["is_display"], name: "index_educations_on_is_display", using: :btree
  add_index "educations", ["moss"], name: "index_educations_on_moss", using: :btree
  add_index "educations", ["name"], name: "index_educations_on_name", using: :btree

  create_table "garage_types", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "garage_types", ["display"], name: "index_garage_types_on_display", using: :btree
  add_index "garage_types", ["is_display"], name: "index_garage_types_on_is_display", using: :btree
  add_index "garage_types", ["moss"], name: "index_garage_types_on_moss", using: :btree
  add_index "garage_types", ["name"], name: "index_garage_types_on_name", using: :btree

  create_table "genders", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "genders", ["display"], name: "index_genders_on_display", using: :btree
  add_index "genders", ["is_display"], name: "index_genders_on_is_display", using: :btree
  add_index "genders", ["moss"], name: "index_genders_on_moss", using: :btree
  add_index "genders", ["name"], name: "index_genders_on_name", using: :btree

  create_table "google_geos", force: true do |t|
    t.integer "criteria_id"
    t.string  "name"
    t.string  "canonical_name"
    t.integer "parent_id"
    t.string  "country_code"
    t.string  "target_type"
    t.string  "status"
  end

  add_index "google_geos", ["criteria_id"], name: "index_google_geos_on_criteria_id", using: :btree

  create_table "is_insureds", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "is_insureds", ["display"], name: "index_is_insureds_on_display", using: :btree
  add_index "is_insureds", ["is_display"], name: "index_is_insureds_on_is_display", using: :btree
  add_index "is_insureds", ["moss"], name: "index_is_insureds_on_moss", using: :btree
  add_index "is_insureds", ["name"], name: "index_is_insureds_on_name", using: :btree

  create_table "is_sr22s", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "is_sr22s", ["display"], name: "index_is_sr22s_on_display", using: :btree
  add_index "is_sr22s", ["is_display"], name: "index_is_sr22s_on_is_display", using: :btree
  add_index "is_sr22s", ["moss"], name: "index_is_sr22s_on_moss", using: :btree
  add_index "is_sr22s", ["name"], name: "index_is_sr22s_on_name", using: :btree

  create_table "leads", force: true do |t|
    t.string   "token"
    t.string   "leadid_token"
    t.integer  "status",                 default: 0
    t.integer  "visit_id"
    t.boolean  "leadid_tcpa_disclosure", default: true
    t.text     "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lic_statuses", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "lic_statuses", ["display"], name: "index_lic_statuses_on_display", using: :btree
  add_index "lic_statuses", ["is_display"], name: "index_lic_statuses_on_is_display", using: :btree
  add_index "lic_statuses", ["moss"], name: "index_lic_statuses_on_moss", using: :btree
  add_index "lic_statuses", ["name"], name: "index_lic_statuses_on_name", using: :btree

  create_table "makes", force: true do |t|
    t.string "name"
  end

  add_index "makes", ["name"], name: "index_makes_on_name", using: :btree

  create_table "marital_statuses", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "marital_statuses", ["display"], name: "index_marital_statuses_on_display", using: :btree
  add_index "marital_statuses", ["is_display"], name: "index_marital_statuses_on_is_display", using: :btree
  add_index "marital_statuses", ["moss"], name: "index_marital_statuses_on_moss", using: :btree
  add_index "marital_statuses", ["name"], name: "index_marital_statuses_on_name", using: :btree

  create_table "models", force: true do |t|
    t.string "name"
  end

  add_index "models", ["name"], name: "index_models_on_name", using: :btree

  create_table "occupations", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "occupations", ["display"], name: "index_occupations_on_display", using: :btree
  add_index "occupations", ["is_display"], name: "index_occupations_on_is_display", using: :btree
  add_index "occupations", ["moss"], name: "index_occupations_on_moss", using: :btree
  add_index "occupations", ["name"], name: "index_occupations_on_name", using: :btree

  create_table "owner_types", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "owner_types", ["display"], name: "index_owner_types_on_display", using: :btree
  add_index "owner_types", ["is_display"], name: "index_owner_types_on_is_display", using: :btree
  add_index "owner_types", ["moss"], name: "index_owner_types_on_moss", using: :btree
  add_index "owner_types", ["name"], name: "index_owner_types_on_name", using: :btree

  create_table "policies", force: true do |t|
    t.integer  "lead_id"
    t.integer  "request_coverage_id"
    t.integer  "is_insured_id"
    t.integer  "company_id"
    t.integer  "years_with_company_id"
    t.integer  "months_with_company",   default: 0
    t.date     "expiration_date"
    t.integer  "continuous_year_id"
    t.integer  "continuous_month",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "policies", ["company_id"], name: "index_policies_on_company_id", using: :btree
  add_index "policies", ["continuous_year_id"], name: "index_policies_on_continuous_year_id", using: :btree
  add_index "policies", ["is_insured_id"], name: "index_policies_on_is_insured_id", using: :btree
  add_index "policies", ["lead_id"], name: "index_policies_on_lead_id", using: :btree
  add_index "policies", ["request_coverage_id"], name: "index_policies_on_request_coverage_id", using: :btree
  add_index "policies", ["years_with_company_id"], name: "index_policies_on_years_with_company_id", using: :btree

  create_table "relationships", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "relationships", ["display"], name: "index_relationships_on_display", using: :btree
  add_index "relationships", ["is_display"], name: "index_relationships_on_is_display", using: :btree
  add_index "relationships", ["moss"], name: "index_relationships_on_moss", using: :btree
  add_index "relationships", ["name"], name: "index_relationships_on_name", using: :btree

  create_table "request_coverages", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "request_coverages", ["display"], name: "index_request_coverages_on_display", using: :btree
  add_index "request_coverages", ["is_display"], name: "index_request_coverages_on_is_display", using: :btree
  add_index "request_coverages", ["moss"], name: "index_request_coverages_on_moss", using: :btree
  add_index "request_coverages", ["name"], name: "index_request_coverages_on_name", using: :btree

  create_table "residence_months", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "residence_months", ["display"], name: "index_residence_months_on_display", using: :btree
  add_index "residence_months", ["is_display"], name: "index_residence_months_on_is_display", using: :btree
  add_index "residence_months", ["moss"], name: "index_residence_months_on_moss", using: :btree
  add_index "residence_months", ["name"], name: "index_residence_months_on_name", using: :btree

  create_table "residence_statuses", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "residence_statuses", ["display"], name: "index_residence_statuses_on_display", using: :btree
  add_index "residence_statuses", ["is_display"], name: "index_residence_statuses_on_is_display", using: :btree
  add_index "residence_statuses", ["moss"], name: "index_residence_statuses_on_moss", using: :btree
  add_index "residence_statuses", ["name"], name: "index_residence_statuses_on_name", using: :btree

  create_table "residence_years", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "residence_years", ["display"], name: "index_residence_years_on_display", using: :btree
  add_index "residence_years", ["is_display"], name: "index_residence_years_on_is_display", using: :btree
  add_index "residence_years", ["moss"], name: "index_residence_years_on_moss", using: :btree
  add_index "residence_years", ["name"], name: "index_residence_years_on_name", using: :btree

  create_table "ticket_types", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "ticket_types", ["display"], name: "index_ticket_types_on_display", using: :btree
  add_index "ticket_types", ["is_display"], name: "index_ticket_types_on_is_display", using: :btree
  add_index "ticket_types", ["moss"], name: "index_ticket_types_on_moss", using: :btree
  add_index "ticket_types", ["name"], name: "index_ticket_types_on_name", using: :btree

  create_table "trims", force: true do |t|
    t.string "name", null: false
  end

  add_index "trims", ["name"], name: "index_trims_on_name", using: :btree

  create_table "vehicle_uses", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "vehicle_uses", ["display"], name: "index_vehicle_uses_on_display", using: :btree
  add_index "vehicle_uses", ["is_display"], name: "index_vehicle_uses_on_is_display", using: :btree
  add_index "vehicle_uses", ["moss"], name: "index_vehicle_uses_on_moss", using: :btree
  add_index "vehicle_uses", ["name"], name: "index_vehicle_uses_on_name", using: :btree

  create_table "vehicles", force: true do |t|
    t.integer  "lead_id"
    t.integer  "year_id"
    t.integer  "make_id"
    t.integer  "model_id"
    t.integer  "owner_type_id"
    t.integer  "vehicle_use_id"
    t.integer  "annual_mileage_id"
    t.integer  "commute_day_id"
    t.integer  "daily_mileage"
    t.integer  "garage_type_id"
    t.integer  "coll_deduct_id"
    t.integer  "comp_deduct_id"
    t.integer  "rid",               limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicles", ["annual_mileage_id"], name: "index_vehicles_on_annual_mileage_id", using: :btree
  add_index "vehicles", ["coll_deduct_id"], name: "index_vehicles_on_coll_deduct_id", using: :btree
  add_index "vehicles", ["commute_day_id"], name: "index_vehicles_on_commute_day_id", using: :btree
  add_index "vehicles", ["comp_deduct_id"], name: "index_vehicles_on_comp_deduct_id", using: :btree
  add_index "vehicles", ["garage_type_id"], name: "index_vehicles_on_garage_type_id", using: :btree
  add_index "vehicles", ["lead_id"], name: "index_vehicles_on_lead_id", using: :btree
  add_index "vehicles", ["make_id"], name: "index_vehicles_on_make_id", using: :btree
  add_index "vehicles", ["model_id"], name: "index_vehicles_on_model_id", using: :btree
  add_index "vehicles", ["owner_type_id"], name: "index_vehicles_on_owner_type_id", using: :btree
  add_index "vehicles", ["vehicle_use_id"], name: "index_vehicles_on_vehicle_use_id", using: :btree
  add_index "vehicles", ["year_id"], name: "index_vehicles_on_year_id", using: :btree

  create_table "visits", force: true do |t|
    t.string   "uuid"
    t.string   "ip"
    t.string   "agent"
    t.string   "device"
    t.string   "gclid"
    t.integer  "geo_id"
    t.integer  "geo_interest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", force: true do |t|
    t.string "name"
  end

  add_index "years", ["name"], name: "index_years_on_name", using: :btree

  create_table "years_with_companies", force: true do |t|
    t.string  "name"
    t.string  "moss"
    t.string  "display"
    t.boolean "is_display"
  end

  add_index "years_with_companies", ["display"], name: "index_years_with_companies_on_display", using: :btree
  add_index "years_with_companies", ["is_display"], name: "index_years_with_companies_on_is_display", using: :btree
  add_index "years_with_companies", ["moss"], name: "index_years_with_companies_on_moss", using: :btree
  add_index "years_with_companies", ["name"], name: "index_years_with_companies_on_name", using: :btree

  create_table "zip_codes", force: true do |t|
    t.string "zip"
    t.string "city"
    t.string "state"
  end

  add_index "zip_codes", ["zip"], name: "index_zip_codes_on_zip", using: :btree

end
