class SessionController < ApplicationController
  def new
  end

   def create
      # raise params.inspect
    if auth
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.password = SecureRandom.hex
      end
      # byebug
      # u.image = auth['info']['image']
      session[:user_id] = @user.id
      redirect_to user_path(@user)
      # render 'welcome/home'
    else
      user = User.find_by(:name => params[:user][:name])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_path(user)
        # redirect_to items_path
      else
        # redirect with flash message
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