class Contact < ActiveRecord::Base
  belongs_to :lead

  belongs_to :residence_status
  belongs_to :residence_year
  belongs_to :residence_month

  validates :phone, presence: true, format: {with: /\A\d{10}\z/}
  validates :address1, presence: true
  validates :zip, presence: true, format: { with: /\A\d{5}\z/, message: "Please input valid zip" }
  validates :email, presence: true, format:{ with: /\A.+@.+\z/}
  validates :residence_status_id, presence: true
  validates :residence_year_id, presence: true


end
