require 'spec_helper'

describe FavoriteAbility do
  let(:favorite) { stub(Favorite) }
  let(:user) { stub(User)  }
  let(:list) { stub(List) }
  
  context "#search" do
    it "return the favorite list of user" do
      Favorite.should_receive(:find_by_user_id_and_list_id).with(user, list)
      FavoriteAbility.new(user, list).search
    end
  end
end