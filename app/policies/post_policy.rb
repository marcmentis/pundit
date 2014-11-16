class PostPolicy < ApplicationPolicy
	def index?
		true
	end

	def show?
		true
	end

	def create?
		true
	end

	def update?
# byebug
		user.present? 
	end
end