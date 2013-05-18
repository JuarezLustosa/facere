require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Insert tasks in my list", %q{
  As a user
  I want insert my tasks in a list
  To remind me what to do
} do
  
  let(:list) { FactoryGirl.create(:list, :user => current_user) }
  
  background do
    sign_in
    list
  end

  scenario "insert", :js => true do
    visit list_path(list.id)
    fill_in "Description", :with => "Clean my room"
    click_button "Add"
    
    within "#task" do
      page.should have_content "Clean my room"
    end
  end
end