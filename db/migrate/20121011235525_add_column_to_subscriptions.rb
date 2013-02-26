class AddColumnToSubscriptions < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :user_id, :integer, :null => false, :default => 0
  end
end
