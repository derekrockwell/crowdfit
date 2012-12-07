

FactoryGirl.define do

	sequence(:email) { |n| "foo#{n}@example.com" }
	sequence(:plan_name) {|n| "Plan#{n}"}


	factory :user do
		password "foobar"
		email {Faker::Internet.email} 
	end

	factory :plan do
		name {Faker::Company.bs}
		price { 10 * (1 + rand(10)) }
	end

end


