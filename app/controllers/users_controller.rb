class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      flash[:notice] = "Your profile was created"
      redirect_to login_path
    else
      flash[:error] = "There was a problem, please try again"
      render 'new'
    end
  end

  def favs 
    @favs = current_user.following
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :password)
  end
end