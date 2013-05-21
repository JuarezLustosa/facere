class FavoritesController < ApplicationController
  respond_to :js
  
  def index
    @favorites = current_user.favorites
  end
  
  def create
    list = List.find(params[:list_id])
    @favorite = current_user.favorites.create(:list => list)

    respond_with @favorite
  end
  
  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    
    respond_with @favorite
  end
end