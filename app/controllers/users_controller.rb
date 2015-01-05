class UsersController < ApplicationController

  def index
    @users = User.order(:prename)
  end

  def show
  end

  def make_teacher
    @user = User.find(params[:id])
    @user.canbeteacher = true
    @user.save
    redirect_to users_path
  end

  def make_not_teacher
    @user = User.find(params[:id])
    @user.canbeteacher = false
    @user.save
    redirect_to users_path
  end

end