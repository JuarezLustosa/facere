module PublicsHelper
  def link_to_favorite(content, path, options= {})    
    options.merge!(:remote => true )
    link_to content, path, options
  end
  
  #TODO REFATOR THIS  
  def switch_button(list)
    favorite = Favorite.find_by_user_id_and_list_id(current_user, list)
    if Favorite.user_list?(current_user, list)
      link_to_favorite image_tag('favorite.png'), favorite_path(favorite, :list_id => list), :method => :delete
    else
      link_to_favorite image_tag('nonfavorite.png'), favorites_path(:list_id => list), :method => :post
    end
  end
end
