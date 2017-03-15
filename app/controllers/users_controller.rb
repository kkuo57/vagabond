class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :destroy, :update]

  # Index of All Users
  def index
    @users = User.all
  end

  # Single User's Page
  def show
    # shows 'user' page
  end

  # 'Sign Up' form
  def new
    @user = User.new
  end

 # Creates new User Account
  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to user_path(current_user)
  end

  # 'Edit' form
  def edit
    # sends 'edit' form
  end

  # Updates User Profile Info
  def update
    @user = User.update(user_params)
    redirect_to user_path(@user)
  end

  # Delete User Account
  def destroy
    @user = User.destroy(:id)
  end

  private

  # Sets User for 'before_action'
  def set_user
    @user = User.find(params[:id])
  end

  # Defines User parameters
  def user_params
    params.require(:user).permit(:first_name, :last_name, :current_city, :email, :password)
  end

end
