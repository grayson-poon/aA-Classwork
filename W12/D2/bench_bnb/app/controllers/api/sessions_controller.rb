class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if @user
      @user.reset_session_token!
      login!(@user)
      render 'api/users/show'
    else
      flash.now[:errors] = "Invalid username/password" #, status: 422
      # render :new
      puts "User not logged in"
    end
  end

  def destroy
    if logout!
      render :logged_out
    else
      flash.now[:errors] = "No logged in user" #, status: 404
    end
  end

end