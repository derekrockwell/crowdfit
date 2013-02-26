source 'https://rubygems.org'

gem 'rails', '4.0.0.beta1'

gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails'
gem "omniauth-facebook"
gem "koala"
gem 'devise', :git => "https://github.com/plataformatec/devise.git", :branch => "rails4"
gem 'execjs'
gem 'bundler'
gem 'uservoice-ruby'
gem 'newrelic_rpm'
gem 'stripe'
gem "permanent_records"
gem 'protected_attributes'
gem "jquery-rails"

group :production do 
	gem 'pg'
end

group :development do
	gem 'sqlite3'
end

group :test, :development do
	gem "factory_girl_rails", :require => false
	gem "rspec-rails"
	gem "rspec_junit_formatter"
	gem "capybara"
	gem "guard-rspec"
	gem "simplecov"
	gem "database_cleaner"
	gem "faker"	
	gem 'therubyracer', :platform => :ruby
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'sass-rails', :git => 'https://github.com/rails/sass-rails.git'
	gem 'coffee-rails', :git => 'https://github.com/rails/coffee-rails.git'
	gem 'uglifier', '1.0.3'
end


