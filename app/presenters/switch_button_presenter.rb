class SwitchButtonPresenter
  attr_reader :favorite, :list, :template
  
  def self.call(favorite, list, template)
    SwitchButtonPresenter.new(favorite, list, template).call
  end
  
  def initialize(favorite, list, template)
    @favorite, @list, @template = favorite, list, template
  end
  
  def call
    has_favorite? ? remove_button : add_button
  end
  
  def html
    @template
  end
  
  def has_favorite?
    @favorite.present?
  end
  
  private 
    
  def remove_button
    link_to_remote(
      html.image_tag('favorite.png'), 
      html.favorite_path(@favorite, :list_id => @list), 
      :method => :delete, 
      :title => "Remove Favorite"
    )
  end
  
  def add_button
    link_to_remote(
      html.image_tag('nonfavorite.png'), 
      html.favorites_path(:list_id => @list), 
      :method => :post, 
      :title => "Add Favorite"
    )
  end
  
  def link_to_remote(content, path, options= {})
    options.merge!(:remote => true )
    html.link_to content, path, options
  end
end