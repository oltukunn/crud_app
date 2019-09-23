class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    users = User.create(user_params)
    redirect_to action: :index
  end
  def index
    @index = 0
    @users = User.all
  end
  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to action: :index
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to action: :index
  end
    private
    def user_params
      params.require(:user).permit(:name,:age)
    end
end
