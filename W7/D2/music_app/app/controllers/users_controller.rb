class UsersController < ApplicationController
  
  def new # get request: to get a new form to fill out
    @user = User.new
    render :new
  end

  def create # post request: click submit button to create the user in the db
    @user = User.new(strong_user_params)

    if @user.save
      log_in_user!(@user)
      redirect_to user_url(@user.id)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    # render :show
  end

  private

  def strong_user_params
    params.require(:user).permit(:email, :password)
  end

end
