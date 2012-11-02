class SubscriptionsController < ApplicationController
before_filter :authenticate_user! 

  def new
    plan = Plan.find(params[:plan_id])
    @subscription = Subscription.new
    @subscription.user = current_user
    @subscription.plan = plan
  end

  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save_with_payment
      redirect_to @subscription, :notice => "Thank you for subscribing!"
    else
      plan = Plan.find(params[:subscription][:plan_id])
      @subscription.plan = plan
      render :new
    end
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  def index
    @subscriptions = current_user.subscriptions
  end

end
