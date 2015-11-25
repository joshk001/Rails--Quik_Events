class JoinsController < ApplicationController

	def index

	end

	#JOIN the event
	def create
		event = Event.find(params[:event_id])
		join = Join.create(user_id: current_user.id, event_id: event.id)
		redirect_to :back
	end

	#UNJOIN the event
	def destroy
		j = Join.find(params[:id])
		j.destroy
		redirect_to :back
	end
end
