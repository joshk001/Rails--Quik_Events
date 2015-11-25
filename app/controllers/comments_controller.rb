class CommentsController < ApplicationController

	def new
		c = Comment.new(comment_params)
		c.save
		redirect_to :back
	end


	private
	def comment_params
		params.require(:comment).permit(:content, :user_id, :event_id)
	end
end
