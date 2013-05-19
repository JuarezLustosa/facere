class FavoriteAbility
  def initialize(user, list)
    @user, @list  = user, list
  end
  
  def search
    Favorite.find_by_user_id_and_list_id(@user, @list)
  end
end