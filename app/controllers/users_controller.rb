class UsersController < ApplicationController

	def login
	end

	def new
		@user = User.new
	end 

	def create
		user = User.create(user_params)
	end

	private

	def user_params
		params.require(:user).permit(:email, :password_digest)
	end

end
