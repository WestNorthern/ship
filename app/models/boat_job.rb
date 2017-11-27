class BoatJob < ApplicationRecord
	belongs_to :boat, dependent: :destroy
	belongs_to :job, dependent: :destroy
end
