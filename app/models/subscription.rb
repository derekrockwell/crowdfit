class Subscription < ActiveRecord::Base
  default_scope where(:deleted_at => nil)
  scope :deleted, deleted 

  belongs_to :plan
  belongs_to :user
  validates_presence_of :plan_id, :user_id
  attr_accessible :stripe_card_token, :plan_id, :user_id
  attr_accessor :stripe_card_token
  
  def self.deleted
    self.unscoped.where('deleted_at IS NOT NULL')
  end 

  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(description: self.user.email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
    rescue Stripe::InvalidRequestError => e
      logger.error "Stripe error while creating customer: #{e.message}"
      errors.add :base, "There was a problem with your credit card."
      false
  end
end
