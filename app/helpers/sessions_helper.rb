module SessionsHelper
  def current_user
    @current_user ||= Member.find_by({
      id: session[:user_id]
    })
  end
end
