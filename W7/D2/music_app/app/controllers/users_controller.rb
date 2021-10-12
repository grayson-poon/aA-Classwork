class UsersController < ApplicationController
  
  def new # get request: to get a new form to fill out
    @user = User.new
    render :new
  end

  def create # post request: click submit button to literally create the user in the db
    user = User.new(strong_user_params)

    if user.save
      log_in_user!(user)
      redirect_to user_url(user.id)
    else
      flash[:errors] = user.errors.full_messages # why does this not show? (duplicate emails)
      redirect_to new_user_url
    end
  end

  def show
    render :show
  end

  private

  def strong_user_params
    params.require(:user).permit(:email, :password)
  end

end
