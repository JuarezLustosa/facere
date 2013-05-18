module HelperMethods
  include Warden::Test::Helpers
  Warden.test_mode!
  
  def current_user
    @current_user ||= FactoryGirl.create(:user)
  end
  
  def sign_out
    Capybara.reset_sessions!
    logout(:user)
  end
  
  def sign_in
    login_as(current_user)
  end
end
RSpec.configuration.include(HelperMethods)