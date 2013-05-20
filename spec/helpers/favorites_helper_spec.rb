require 'spec_helper'

describe FavoritesHelper do  
  let(:current_user) { stub_model(User) }
  let(:stub_favorites) { current_user.stub_chain(:favorites, :any?) }
  let(:have_favorites) { stub_favorites.and_return(true) }
  let(:havent_favorites) { stub_favorites.and_return(false) }
  
  
  context "#has_user_favorite_list?" do
    it "return true" do
      have_favorites
      has_user_favorite_list?.should be_true
    end
    
    it "return false" do
      havent_favorites
      has_user_favorite_list?.should be_false
    end
  end
end