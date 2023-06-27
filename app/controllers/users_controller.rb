class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(@user.user_id)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path
    else
      render "show", status: :unprocessable_entity
    end
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :nationality, :interests, :email)
  end
end
