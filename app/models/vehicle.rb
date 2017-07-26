class Vehicle < ActiveRecord::Base
  belongs_to :lead

  belongs_to :year
  belongs_to :make
  belongs_to :model
  belongs_to :owner_type
  belongs_to :vehicle_use
  belongs_to :annual_mileage
  belongs_to :garage_type
  belongs_to :coll_deduct
  belongs_to :comp_deduct
  belongs_to :commute_day

  validates :year_id, presence: true
  validates :make_id, presence: true
  validates :model_id, presence: true
  validates :vehicle_use_id, presence: true
  validates :commute_day_id, presence: true, if: :is_commute?
  validates :owner_type_id, presence: true
  validates :coll_deduct_id, presence: true
  validates :comp_deduct_id, presence: true
  validates :garage_type_id, presence: true
  validates :annual_mileage_id, presence: true

end
