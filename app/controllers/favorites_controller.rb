class FavoritesController < ApplicationController
  respond_to :js
  
  def index
    @favorites = current_user.favorites
  end
  
  def create
    @favorite = Favorite.new
    @favorite.list = List.find(params[:list_id])
    @favorite.user = current_user
    @favorite.save
    
    respond_with @favorite
  end
  
  def destroy

  end
end