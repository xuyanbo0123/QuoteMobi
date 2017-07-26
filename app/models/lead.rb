class Lead < ActiveRecord::Base
  enum status: [:_received, :_saved, :_processing, :_processed, :_sold, :_rejected]

  belongs_to :visit

  has_many :drivers
  has_many :vehicles
  has_one :contact
  has_one :policy

  validates :visit_id, presence: true
end
