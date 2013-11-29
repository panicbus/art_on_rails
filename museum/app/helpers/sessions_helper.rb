module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token # .permanent to not forget the cookie on browser shutdown
    @current_user = user
  end

  def current_user #resets @current_user by the cookie remember_token
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def authenticate
   redirect_to new_session_path if !current_user
    # if current_user
    #  return true
    # else
    #   return false
    # end
  end

  def sign_out
    @current_user = nil
    cookies.delete(:remember_token)
  end

end
