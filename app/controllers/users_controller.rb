class UsersController < ApplicationController
  def index
  end

  def show
  end
  
  def new
    @user = User.current_user
  end
  
  def create
    @user = User.create(user_params)
  end
  
  private
    def user_params
      param.require(:user).permit(:avatar)
    end
end
