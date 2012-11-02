ActiveAdmin.register Plan do
  
form do |f|
	f.inputs "Details" do
		f.input :price
		f.input :name
	end
	f.buttons
end

member_action :create, :method => :post do
	@plan = Plan.create(params[:plan])

	#Stripe API expects amount in cents, our data model leverages dollars.
	#multiple by 100 to get the amount to send to Stripe
	amount = @plan.price * 100	
	Stripe::Plan.create(:amount => amount, :interval => 'month', :name => @plan.name, :currency => 'usd', :id => @plan.id)
	redirect_to admin_plan_url(@plan), :notice => "Plan Created w/ Stripe Integrated"
end

end
