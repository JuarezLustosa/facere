require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Logging", %q{
  As a user
  I want logging in the page
  For has access
} do
  
  scenario "sing-up" do
    visit lists_path
    page.should have_content 'Sign up'
    click_link('Sign up')
    
    fill_in "Email", :with => "jondoe@example.com"
    fill_in 'user_password', :with => '12345678'
    fill_in "Password confirmation", :with => "12345678"
    click_button "Sign up"
    
    page.should have_content "Lists"
  end
  
  scenario "can't have access for another links" do
     visit lists_path
     click_link "My List" 
     page.should have_content "Sign in"
  end
end