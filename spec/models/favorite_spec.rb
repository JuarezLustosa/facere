require 'spec_helper'

describe Favorite do
  let(:favorite) { 
    Favorite.new(:user => stub_model(User), 
                 :list => stub_model(List))
  }

  context "validate presence of" do
    it "user" do
      favorite.user = nil 
      favorite.should be_invalid
    end    
    
    it "list" do
      favorite.list = nil 
      favorite.should be_invalid
    end    
  end  
end