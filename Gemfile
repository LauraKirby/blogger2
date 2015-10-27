source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use sqlite3 as the database for Active Record
gem 'mysql2'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "will_paginate"

gem 'jbuilder', '~> 2.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem "authlogic"

gem "slim"

group :development, :test do
	#build application tests
  gem 'rspec-rails', '~> 3.0'
  #use to build instances of your models for use in test scenarios
  gem 'factory_girl_rails'
  #use to automate various browsers to simulate user interactions with your app
  gem 'capybara'
  #add ensure data base takes care of factory girl data
  gem 'database_cleaner'
  # Debugging tool
	gem 'pry-rails'
	# Add fake data
	gem 'faker'
	# Opens default web browser upon failed integration specs and shows what your application is rendering
	gem 'launchy'
end
