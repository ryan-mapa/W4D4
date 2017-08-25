class UsersController < ApplicationController

  def new
    render :new
  end

  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.new(user_params)
    if @user.save
        render :new
    else
        redirect_to :new
    end
  end

  def user_params
    params.require(:user).permit(:username,:password)
  end

end
