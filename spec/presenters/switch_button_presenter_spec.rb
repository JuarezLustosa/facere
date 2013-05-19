require 'spec_helper'

class List
end

describe SwitchButtonPresenter do
  include ActionView::TestCase::Behavior 

  let(:user) { User }
  let(:list) { List }
  let(:switch_button) { SwitchButtonPresenter.call(user, list, view) }
  
  context "return link" do
    it "add" do
      switch_button.stub(:has_favorite?).and_return(false)
      switch_button.should include("Add Favorite")
    end

    it "remove" do
      switch_button.stub(:has_favorite?).and_return(true)
      switch_button.should include("Remove")
    end
  end
end
