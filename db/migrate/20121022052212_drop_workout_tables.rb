class DropWorkoutTables < ActiveRecord::Migration
  def up
	drop_table :exercises
	drop_table :exercise_workouts
	drop_table :user_workouts
	drop_table :workouts  	
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
