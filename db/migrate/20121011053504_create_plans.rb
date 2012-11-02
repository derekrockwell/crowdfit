class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
	  t.decimal :price, :null => false
	  t.string :name, :null => false
      t.timestamps
    end
  end
end
