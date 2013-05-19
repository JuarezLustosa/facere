module PublicsHelper
  def switch_button(list)
    favorite = FavoriteAbility.new(current_user, list).search
    SwitchButtonPresenter.call(favorite, list, self)
  end
end
