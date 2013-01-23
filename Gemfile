source 'https://rubygems.org'

ruby '1.9.3'

gem 'carrierwave'
gem 'rails', '3.2.11'
gem 'rails-api'
gem 'thin'
gem 'active_model_serializers', :github => 'rails-api/active_model_serializers'
gem 'activerecord-postgres-hstore', github: 'engageis/activerecord-postgres-hstore'
gem 'pg'

group :assets do
  gem 'sass-rails', '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'compass-rails'
  gem 'uglifier'
  gem 'bootstrap-sass', '~> 2.0.3.0'
  gem 'handlebars_assets'
end

group :development do
  gem 'quiet_assets'
end

group :test, :development do
  gem 'rspec-rails', '2.12.0'
  gem 'pry'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'guard'
  gem 'guard-brakeman'
  gem 'guard-jasmine'
  gem 'guard-rspec'
  gem 'jasmine'
  gem 'poltergeist'
  gem 'shoulda'
  gem 'simplecov'
end
