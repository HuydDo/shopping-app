class SessionController < ApplicationController
  def new
  end

  def create
    if auth
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.password = SecureRandom.hex
      end
      session[:user_id] = @user.id
      flash[:notice] = "login sucessfully"
      redirect_to user_path(@user)
    else
      user = User.find_by(:name => params[:user][:name])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:notice] = "login sucessfully"
        redirect_to user_path(user)
      else
        flash[:error] = "name/password is incorrect"
        render :new
      end
    end
  end

  def destroy
    if current_user
      session.delete :user_id
      redirect_to root_url
    end
  end

  private 
  
  def auth
    request.env['omniauth.auth']
  end
end