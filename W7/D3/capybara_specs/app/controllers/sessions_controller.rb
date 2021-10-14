class SessionsController < ApplicationController

  def new
    render :new
  end
  
  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    
    if @user
      log_in_user!(@user)
      redirect_to user_url(@user.id)
    else
      flash.now[:errors] = ["Invalid username or password"]
      render :new
    end

  end

end
