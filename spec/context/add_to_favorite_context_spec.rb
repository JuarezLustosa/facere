require "spec_helper"

describe AddToFavoriteContext do
  let(:user) { User.new }
  let(:list) { List.new }

  it 'adds the list to the users favorite' do
    context = AddToFavoriteContext.new(user, list)
    context.user.should_receive(:add_to_favorite).with(context.list)
    context.call
  end
end