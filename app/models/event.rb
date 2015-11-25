class Event < ActiveRecord::Base
	belongs_to :user
 	
 	has_many :comments, through: :users, source: :user
 	has_many :users_joined, through: :joins, source: :user, dependent: :destroy
 	has_many :joins, dependent: :destroy


	validates :name, :date, :location, :state, presence: true


	def find_join_id current_user
  		Join.select(:id).where(user: current_user, event: self).first.id
 	end
end
