require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Create list", %q{
  As a user
  I want create a list
  To put my tasks in there
} do
  
  background do
    sign_in
  end

  scenario "create" do
    visit lists_path
    click_link "Add a new list"
    fill_in "Description", :with => "My new list"
    check("Public")
    
    click_button("Create List")
    
    page.should have_content "My new list"
    page.should have_content "TODO"
  end
end