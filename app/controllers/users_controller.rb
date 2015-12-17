class UsersController < ApplicationController

  def index
@available_at = Time.now
    @users = User.order(:name)
  end

before_action :set_user, only: [ :show, :edit, :update, :destroy ]

def new
    @user = User.new
  end

  private
def book_params
  params.require(:user).permit(:name, :user_id, :password_digest, :admin)
end

end