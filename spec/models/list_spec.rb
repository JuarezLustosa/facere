require 'spec_helper'

describe List do
  let(:list) { List.new(:description => "My list of to do", 
                        :public      => true,
                        :owner        => stub_model(User)) }
  
  describe "validate presence" do
    it "description" do
      list.description = nil 
      list.should be_invalid
    end
    
    it "user" do
      list.owner = nil 
      list.should be_invalid
    end        
  end
end
