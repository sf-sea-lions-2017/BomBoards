module ApplicationHelper
  def current_user
    @user ||= User.last
  end
end
