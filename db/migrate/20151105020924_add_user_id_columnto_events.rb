class AddUserIdColumntoEvents < ActiveRecord::Migration
  def change
  	add_column :events, :user_id, :integer, :unique => true
  end
end
