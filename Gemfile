source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '3.2.12'
gem 'jquery-rails'
gem 'devise'
gem 'simple_form'
gem 'uglifier'
gem 'thin'
gem 'responders'

gem 'sqlite3', :groups => [:test, :development]

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'rspec', '~>2.5'
  gem 'rspec-rails', '~>2.8'
  gem "database_cleaner", "0.6.7"
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara', '~>2.1'
end
