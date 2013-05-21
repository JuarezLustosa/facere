require 'spec_helper'

describe Like do
  let(:user) { User.new }
  let(:list) { List.new }
  let(:favorite) { Favorite.new }
  let(:extend_like) { user.extend Like }
  
  before do
    extend_like
  end

  describe "#add_to_favorite" do
    it "add a list to favorite" do
      user.stub_chain(:favorites, :create).and_return(favorite)
      user.favorites.should_receive(:create).with(:list => list)
      user.add_to_favorite(list)
    end
  end
end