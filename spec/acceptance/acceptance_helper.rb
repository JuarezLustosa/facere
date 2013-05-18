require "spec_helper"
require 'capybara/rails'
require "ostruct"
require 'database_cleaner'

Capybara.configure do |config|
   config.match = :one
   config.exact_options = true
   config.ignore_hidden_elements = false
   config.visible_text_only = true
end

# Put your acceptance spec helpers inside /spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}