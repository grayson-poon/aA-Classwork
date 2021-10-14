class ApplicationController < ActionController::Base

  skip_before_action :verify_authenticity_token

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token]) # what about multiple users at the same time?
  end

  def logged_in?
    !!current_user # converts truthy to true and falsey to false
  end

  def log_in_user!(user)
    new_token = user.reset_session_token! # resets session token for user
    session[:session_token] = new_token # updates session token stored in cookie
  end


end
