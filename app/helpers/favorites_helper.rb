module FavoritesHelper
  def has_user_favorite_list?
    current_user.favorites.any?
  end
end
