source 'https://rubygems.org'

ruby '2.1.3'

gem 'delayed_job_active_record'
gem 'email_validator'
gem 'geocoder'
gem 'jbuilder'
gem 'oj'
gem 'rack-timeout'
gem 'rails'
gem 'recipient_interceptor'
gem 'unicorn'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bcrypt'
gem 'rspec-its'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'sqlite3'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'webmock'
end

group :staging, :production do
  gem 'rails_12factor'
end

group :production do
  gem 'pg'
end