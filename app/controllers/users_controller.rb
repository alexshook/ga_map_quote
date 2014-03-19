class UsersController < ApplicationController

  before_filter :authenticate!, except: :index

  def index
    @users = User.all
  end

  def new
    @user = User.create
  end

  def create
    user = User.create user_params
  end

  def update
    @user = User.find params[:id]
    user.update_attributes!(user_params)
    user = User.update user_params
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
    user = User.update user_params
  end

  private

  def authenticate!
  redirect_to root_path unless user_signed_in? or admin_signed_in?
  end

  def user_params
    params.require(:user).permit(:email)
  end

end
