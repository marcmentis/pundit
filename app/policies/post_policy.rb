class PostPolicy < ApplicationPolicy
	def index?
		true
		# byebug
	end

	def show?
		scope.where(:id => record.id).exists?	
	end

	# Will affect "new" as "new" is mapped to "create"
	def create?
		true
	end


	def update?
		# byebug
		user.id == record.user_id
	end

	def destroy?
		# byebug
		user.superadmin?
		
	end
end