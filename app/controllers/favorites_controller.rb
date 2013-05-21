class FavoritesController < ApplicationController
  respond_to :js
  
  def index
    @favorites = current_user.favorites
  end
  
  def create
    @favorite = AddToFavoriteContext.call(current_user, List.find(params[:list_id]))
    respond_with @favorite
  end
  
  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    
    respond_with @favorite
  end
end