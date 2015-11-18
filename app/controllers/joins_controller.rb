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
		join = Join.find(params[:id])
		join.destroy
		redirect_to :back

	end
end
