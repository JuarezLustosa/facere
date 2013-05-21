require 'spec_helper'

describe SwitchButtonPresenter do
  include ActionView::TestCase::Behavior 

  let(:favorite) { Favorite }
  let(:list) { List }
    
  context "return link_to" do
    it "add" do
      switch_button =  SwitchButtonPresenter.call(favorite, list, view)
      switch_button.should include("Remove")
    end

    it "remove" do
      switch_button =  SwitchButtonPresenter.call(nil, list, view)
      switch_button.should include("Add Favorite")
    end
  end
end
