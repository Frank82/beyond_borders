class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :create]

  def index
    @users = policy_scope(User)
  end

  def show
    @user = User.find(@user.user_id)
    authorize @user
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params[:id])
    @user.user = current_user
    authorize @user
    if @user.save
      redirect_to user_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    authorize @user
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :nationality, :interests, :email, :password)
  end
end
