class UsersController < ApplicationController
	include SessionsHelper

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			sign_in @user
			redirect_to '/'
		else
			render 'new'
		end
	end

	private

		def user_params
			params.require(:user).permit(:username, :password)
		end
end