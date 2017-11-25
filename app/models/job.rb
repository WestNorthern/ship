class Job < ApplicationRecord
	belongs_to :user
	has_many :boat_jobs
	has_many :boats, :through => :boat_jobs

	validates :job_name, presence: true, uniqueness: true
	validates :job_description, presence: true, length: { minimum: 50 }
	validates :origin, presence: true
	validates :destination, presence: true
	validates :cost, presence: true, numericality: { greater_than: 999 }
	validates :containers, presence: true, numericality: { greater_than: 1, only_integer: true }

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end


