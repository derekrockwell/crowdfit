class AddColumnToTables < ActiveRecord::Migration
  def change
  	add_column :users, :deleted_at, :datetime
  	add_column :plans, :deleted_at, :datetime
  	add_column :subscriptions, :deleted_at, :datetime
  	add_column :workouts, :deleted_at, :datetime
  	add_column :exercises, :deleted_at, :datetime
	add_column :user_workouts, :deleted_at, :datetime
  	add_column :exercise_workouts, :deleted_at, :datetime
  end
end
