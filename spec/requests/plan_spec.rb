require 'spec_helper'

describe "plans" do 

	plan_a = FactoryGirl.create(:plan)
	plan_b = FactoryGirl.create(:plan)
	plan_c = FactoryGirl.create(:plan)
		
	user = FactoryGirl.create(:user)
	user.confirm!

	it "user can't create plan" do
		visit "/plans" 
		page.should have_content("You need to sign in")
	end

	it "user can subscribe and unsubscribe to a plan" do
		visit "/plans"
		fill_in "Email", :with => user.email
		fill_in "Password", :with => "foobar"
		click_button "Sign In"
		visit new_plan_user_path(plan_a)
		page.should have_content("Signing up")
		fill_in "card_number", :with => "4242424242424242"
		fill_in "card_code", :with => "123"
		select("2014", :from => "card_year")
	end

end