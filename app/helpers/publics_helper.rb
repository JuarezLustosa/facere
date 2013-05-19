module PublicsHelper
  def switch_button(list)
    SwitchButtonPresenter.call(current_user, list, self)
  end
end
