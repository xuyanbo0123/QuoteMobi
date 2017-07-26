class Driver < ActiveRecord::Base
  belongs_to :lead

  belongs_to :gender
  belongs_to :marital_status
  belongs_to :relationship
  belongs_to :occupation
  belongs_to :education
  belongs_to :credit
  belongs_to :lic_status
  belongs_to :age_lic
  belongs_to :is_sr22

  validates :relationship_id, presence: true
  # validates :first_name, presence: true, length: { minimum: 2 }, format: { with: /\A(?!.*fuck).*\z/i, message: "Please input real name" }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthday, presence: true
  validates :gender_id, presence: true
  validates :marital_status_id, presence: true
  validates :occupation_id, presence: true
  validates :education_id, presence: true
  validates :credit_id, presence: true
  validates :age_lic_id, presence: true
  validates :lic_status_id, presence: true
  validates :is_sr22_id, presence: true
end
