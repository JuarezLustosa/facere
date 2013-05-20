require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Publics Lists", %q{
  As a user
  I want visit public lists
  To see what others users are doing
} do
  
  let(:public_list) { FactoryGirl.create(:list_with_tasks, :public => true, :user => current_user) }
  
  background do
    sign_in
    public_list
  end
    
  scenario "see the list" do
    visit publics_path

    within ".description" do
      page.should have_content "#{public_list.description}"
    end
  end
  
  scenario "see tasks of a public list", :js => true do
    visit publics_path
    page.should_not have_content  "My Task"
    
    page.execute_script('$("tr.lists").trigger("click")')
    within "#tasks" do
      page.should have_content "My Task"
    end
  end
end