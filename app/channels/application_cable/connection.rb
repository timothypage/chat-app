module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_user

  	def connect 
  		if user = User.find(1)
  			self.current_user = user
  		else
  			reject_unauthorized_connection
  		end
  	end

  end
end
