class User < ActiveRecord::Base
	has_many :posts

	# Define methods to check for roles
	def superadmin?
		role == "superadmin"
	end

	def admin?
		role == "admin"
	end

	def doctor?
		role == "doctor"
	end
end
