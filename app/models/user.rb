class User < ApplicationRecord
	has_secure_password

	validates :password, length: {minimum: 8}
	validates_uniqueness_of :username
end
