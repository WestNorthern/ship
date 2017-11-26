class Boat < ApplicationRecord
	validates :name , :uniqueness => true

	belongs_to :user
	has_many :boat_jobs
	has_many :jobs, :through => :boat_jobs

	validates :name, presence: true, uniqueness: true
	validates :capacity, presence: true, numericality: { greater_than: 1, only_integer: true }
	validates :location, presence: true
	validates :home_port, presence: true



	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
end
