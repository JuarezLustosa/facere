require 'spec_helper'

describe Task do
  let(:task) { 
    Task.new(:description => "Clean my roon", 
             :list => stub_model(List))
  }
  
  describe "validate presence" do
    it "description" do
      task.description = nil 
      task.should be_invalid
    end    
  end  
end
