source 'https://rubygems.org'

gem 'rails', '4.0.0.beta1'

gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails'
gem "omniauth-facebook"
gem "koala"
gem 'devise', :git => "https://github.com/plataformatec/devise.git", :branch => "rails4"
gem 'execjs'
gem 'bundler'
gem 'uservoice-ruby'

gem 'stripe'
gem "permanent_records"
gem 'protected_attributes'
gem "jquery-rails"
gem "figaro"
#gem "meta_search", :path => "/Users/derekrockwell/projects/forks/meta_search"
gem "ransack", :path => "/Users/derekrockwell/projects/forks/ransack"
gem "bourbon"
gem "sass"
gem "kaminari"
gem "formtastic"
gem "inherited_resources"
gem "arbre"

group :production do 
	gem 'pg'
	gem 'newrelic_rpm'
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
	gem "better_errors"
	gem "binding_of_caller"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'sass-rails', :git => 'https://github.com/rails/sass-rails.git'
	gem 'coffee-rails', :git => 'https://github.com/rails/coffee-rails.git'
	gem 'coffee-script-source', '~> 1.4.0' # ADD THIS LINE, 1.5.0 doesn't compile ActiveAdmin JavaScript files
	gem 'uglifier', '1.0.3'
end

gem 'activeadmin', :path => "/Users/derekrockwell/projects/forks/active_admin_rails4"
