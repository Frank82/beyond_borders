class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(@user.user_id)
  end

  def create
  end

  def edit
  end

  def update

  end
end