class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_variables

	def set_variables
	  @locations = ["Yonaguni", "Dunwich", "Miskatonic Cove", "Arizona Bay", "Alexandria", "Antikythera"]
	end

  

end
