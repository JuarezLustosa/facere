require 'spec_helper'

describe List do
  let!(:user) { FactoryGirl.create(:user)  }
  let(:list) { List.new(:description => "My list of to do", 
                        :public      => true,
                        :user        => user) }
  
  describe "validate presence" do
    it "description" do
      list.description = nil 
      list.should be_invalid
    end
    
    it "user" do
      list.user = nil 
      list.should be_invalid
    end        
  end
end
