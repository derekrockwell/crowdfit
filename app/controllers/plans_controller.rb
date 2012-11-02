class PlansController < ApplicationController
 before_filter :authenticate_user! 

  def new
    plan = Plan.find(params[:plan_id]) 
    @subscription = plan.subscriptions.build
    @subscription.user = current_user
  end

  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save_with_payment
      redirect_to @subscription.plan, :notice => "Thank you for subscribing!"
    else
      plan = Plan.find(params[:subscription][:plan_id])
      @subscription.plan = plan
      render :new
    end
  end

  def show
    @subscriptions = current_user.subscriptions
  end

  def index
    @plans = Plan.all  
  end

  def edit
    @subscription = current_user.subscriptions.where(:plan_id => params[:plan_id]).first
  end

  def destroy
    subscription = Subscription.where(:plan_id => params[:plan_id], :user_id => params[:id]).first
    subscription.delete
    redirect_to root_path
  end
end
