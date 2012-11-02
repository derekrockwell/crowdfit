class ChangePlanPriceTypeToInteger < ActiveRecord::Migration
  def up
  	change_table :plans do |t|
  		t.change :price, :integer
  	end
  end

  def down
  	change_table :plans do |t|
  		t.change :price, :decimal
  	end  	
  end
end
