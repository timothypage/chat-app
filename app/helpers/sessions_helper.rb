module SessionsHelper
	def sign_in(user)
		session[:user_id] = user.id
		cookies.signed[:user_id] = user.id
	end

	def sign_out
		session.delete(:user_id)
		cookies.delete(:user_id)
	end

	def current_user
		if session[:user_id] && user = User.find(session[:user_id])
			user
		else
			false
		end
	end
end
