class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(:name => params[:user][:name])
    if user && user.aunthenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_url
  end
end