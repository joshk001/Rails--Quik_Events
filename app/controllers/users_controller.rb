class UsersController < ApplicationController

	# before_action :require_correct_user, only: [:new, :edit, :update]


	def index
	end

	def new
		user = User.new(user_params)

		if user.save
			session[:user_id] = user.id 
			redirect_to "/events"
		else
			flash[:errors] = user.errors.full_messages
			redirect_to :back
		end
	end 

	def edit
		@user = User.find(params[:id])
	end

	def update
		u = User.find(params[:id])
		u.update(user_params)
		redirect_to '/events'
	end




	private
	def user_params
		params.require(:users).permit(:first_name, :last_name, :location, :state, :email, :password, :password_confirmation)
	end

end
