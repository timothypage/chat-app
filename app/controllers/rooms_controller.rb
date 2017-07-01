class RoomsController < ApplicationController
	include SessionsHelper

	def index
		@current_user = current_user

		unless @current_user
			redirect_to '/sign-in' 
			return
		end

		# session[:user_id] = 1 unless session[:user_id]
		Rails.logger.info("session id: " + session[:user_id].to_s)
	end
end
