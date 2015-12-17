class SessionsController < ApplicationController
  def new
     user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password_digest])
      session[:user_id] = user.user_id
      redirect_to book_url
    else
      redirect_to login_url, alert: "Invalid user name/password."
    end
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password_digest])
      session[:user_id] = user.user_id
      redirect_to book_url
    else
      redirect_to login_url, alert: "Invalid user name/password."
    end
  end

  def destroy
    session[user_id] = nil
    redirect_to book_url, notice: "Logged out"
  end
end
