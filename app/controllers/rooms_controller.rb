class RoomsController < ApplicationController
	def index
		 # session[:user_id] = 1 unless session[:user_id]
		 Rails.logger.info("session id: " + session[:user_id].to_s)
	end
end
