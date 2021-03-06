class SessionsController < ApplicationController
  before_action :logged_in, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      flash[:notice] = "login successful!"

      # Admin users are redirected to teams management page
      if user.is_admin?
        redirect_to teams_url
      else
        redirect_to root_url
      end
    else
      flash[:notice] = "Email or Password invalid"
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end

  private
    def logged_in
      redirect_to root_url if logged_in?
    end
end
