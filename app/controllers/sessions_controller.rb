class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_user_id(params[:user_id])
    if user && user.authenticate(params[:password_digest])
      #Log in use and redirect
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login', notice: "Invalid user name/password."
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to '/login', notice: "Successfully logged out."
  end
end
