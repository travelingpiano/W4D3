class UsersController < ApplicationController
  before_action :require_logged_out
  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      redirect_to cats_url
    else
      flash.now[:errors] = ["Invalid username or password"]
      render :new
    end
  end

  def new
    render :new
  end
  private
  def user_params
    params.require(:user).permit(:user_name,:password,:session_token)
  end
end
