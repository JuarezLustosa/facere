require "spec_helper"
require 'capybara/rails'
require "ostruct"

Capybara.default_selector = :css
Capybara.ignore_hidden_elements = false
Capybara.default_wait_time = 10
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium

RSpec.configure do |config|
  config.include Capybara::DSL
  config.use_transactional_fixtures = true
end

# Put your acceptance spec helpers inside /spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f