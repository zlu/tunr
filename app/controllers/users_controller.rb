class UsersController < ApplicationController
	def index
		@users = []
  		if current_user && current_user.admin?
			@users = User.all
		end
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(params[:user])
		user.save!
		render nothing: true
	end

	def destroy
		user = User.find(params[:id])
		user.destroy
		redirect_to :back
	end
end