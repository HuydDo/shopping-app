class SessionController < ApplicationController
  def new
  end

  def create
    # raise params.inspect
    user = User.find_by(:name => params[:user][:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
      # redirect_to items_path
    else
      render :new
    end
  end

  def destroy
    if current_user
      session.delete :user_id
      redirect_to root_url
    end
  end
end