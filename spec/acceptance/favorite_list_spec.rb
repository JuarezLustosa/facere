require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Favorite List", %q{
  As a user
  I want see my favorite list
  To check, which list I like
} do
  
  let(:list) { FactoryGirl.create(:list, :user => current_user) }
  
  let(:my_favorite) { 
    FactoryGirl.create(:favorite, :user => current_user, :list => list) 
  }
    
  background do
    sign_in
    my_favorite
  end

  scenario "see my favorite list" do
    visit favorites_path
    
    within "#favorite" do
      page.should     have_content my_favorite.list_description
    end
  end
end