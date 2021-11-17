class ApplicationController < ActionController::Base
  helper_method :current_user #, :logged_in?
  # CRLLL
  def current_user
    return nil if !session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  # def require_logged_in
  #   (redirect_to :sign_in) unless logged_in?
  # end

  def login!(user)
    session[:session_token] = user.session_token
    @current_user = user
    
  end

  def logout!
    if current_user
      current_user.reset_session_token!
      @current_user = nil
      session[:session_token] = nil
      return true
    else
      return false
    end
  end

  def logged_in?
    current_user ? true : false
  end
end
