require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Manage tasks in my list", %q{
  As a user
  I want manage my tasks in a list
  To remind me what to do
} do
  
  let(:list) { FactoryGirl.create(:list, :owner => current_user) }
  let(:task) { FactoryGirl.create(:task) }
  
  background do
    sign_in
    task
  end
  
  def visit_list_path
    visit list_path(task.list.id)
  end
  
  scenario "insert a task", :js => true do
    visit_list_path
    fill_in "Description", :with => "Clean my room"
    click_button "Add"
    page_should_have_task
  end
  
  scenario "remove a task", :js => true do
    visit_list_path
    page_should_have_task

    click_link "Remove"
    page_should_not_have_task
  end
  
  def page_should_not_have_task
    within "#task" do
      page.should_not have_content "#{task.description}"
    end
  end
  
  def page_should_have_task
    within "#task" do
      page.should have_content "#{task.description}"
    end
  end
end