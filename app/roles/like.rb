module Like
  def add_to_favorite(list)
    self.favorites.create(:list => list)
  end
end