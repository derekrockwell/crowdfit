require 'spec_helper'

describe "login" do 

	describe "existing user" do
		
		it "logs in and logs out" do
			user = FactoryGirl.create(:user)
			user.confirm!
			visit "/users/sign_in"
			fill_in "Email", :with => user.email
			fill_in "Password", :with => "foobar"
			click_button "Sign In"
			page.should have_content("Logout")
			click_link "Logout"
			page.should have_content("Login")
		end
	end

		it "denies bad login" do
			user = FactoryGirl.create(:user)
			user.confirm!
			visit "/users/sign_in"
			fill_in "Email", :with => user.email
			fill_in "Password", :with => "notfoobar"
			click_button "Sign In"
			page.should have_content("Invalid email or password")

		end
end