class AddToFavoriteContext
  attr_reader :user, :list

  def initialize(user, list)
    @user, @list = user, list
    @user.extend Like
  end
  
  def self.call(user, list)
    AddToFavoriteContext.new(user, list).call
  end
  
  def call
    @user.add_to_favorite(list)
  end
end