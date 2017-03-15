class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :destroy, :update]

  def index
    @users = User.all
  end

  def show
    # shows 'user' page
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to user_path(current_user)
  end

  def edit
    # sends 'edit' form
  end

  def update
    @user = User.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.destroy(:id)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :current_city, :email, :password)
  end

end
