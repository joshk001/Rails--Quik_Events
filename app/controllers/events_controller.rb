class EventsController < ApplicationController

	def index
		@user = User.find(current_user)
		@events = Event.all.where.not(:user_id => current_user.id)
		# @event = Event.find(params[:id])
		# @event_by_user = @user.event
	end

	def create

		e = Event.new(name: params[:name],
			date: params[:date],
			location: params[:location], 
			state: params[:state], 
			user_id: current_user.id)
		e.save
		redirect_to :back
	end

	def show #Showing the details of the specific event
		@eve = Event.find(params[:id])
		@u = @eve.user

		#Displaying members who joined
		j = Join.all.where(event_id: @eve.id)
		u = j.pluck(:user_id)
		@ppl = User.all.where(id: u)
		
	
	end

	def destroy
		event = Event.find(params[:id])
		event.delete
		redirect_to :back
	end

# private
# 	def events_params
# 		params.require(:events).permit(:name, :date, :location, :state)
# 	end

end



