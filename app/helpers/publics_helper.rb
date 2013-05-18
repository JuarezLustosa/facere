module PublicsHelper
  def link_to_remote(content, path, options= {})    
    options.merge!(:remote => true )
    link_to content, path, options
  end
  
  def remove_favorite(list, favorite)
    link_to_remote(
      image_tag('favorite.png'), 
      favorite_path(favorite, :list_id => list), 
      :method => :delete, 
      :title => "Remove Favorite"
    )
  end
  
  def add_favorite(list)
    link_to_remote(
      image_tag('nonfavorite.png'), 
      favorites_path(:list_id => list), 
      :method => :post, 
      :title => "Add Favorite"
    )
  end
  
  #TODO REFACTOR THIS  
  def switch_button(list)
    favorite = Favorite.find_by_user_id_and_list_id(current_user, list)    
    Favorite.user_list?(current_user, list) ? remove_favorite(favorite, list) : add_favorite(list)
  end
end
