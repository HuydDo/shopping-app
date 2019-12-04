class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.user_id
      redirect_to items_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username,:password)
  end

end
