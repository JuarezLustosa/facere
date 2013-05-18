require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Set a favorite list", %q{
  As a user
  I want set my favorite list
  To see wich list I like
} do
  
  let(:public_list) { FactoryGirl.create(:list, :public => true, :user => current_user) }
  
  background do
    sign_in
    public_list
  end

  scenario "set a list", :js => true do
    visit publics_path
    
    within ".favorite_#{public_list.id}" do
      click_link "Add Favorite"
      page.has_link? "Remove Favorite"
      page.has_no_link? "Add Favorite"
    end
  end
end