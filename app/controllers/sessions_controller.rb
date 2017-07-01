class SessionsController < ApplicationController
	include SessionsHelper

	def new
  	if @current_user = current_user
  		render 'signed_in'
  	end
  end

  def create
    user = User.find_by(username: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to '/'
    else
      flash.now[:error] = 'incorrect username or password :P'
      render 'new'
    end
  end

  def destroy
  	sign_out
  	flash[:info] = 'signed out successfully'
  	redirect_to sign_in_path

  end
end
