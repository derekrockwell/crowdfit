class Plan < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, :through => :subscriptions
  attr_accessible :price, :name
  accepts_nested_attributes_for :subscriptions
end
