class SessionsController < ApplicationController

  # Login route?
  def new
    @user = User.new
  end

  # Create a new user session
  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:blank] = "Now, you're vagabound!"
      redirect_to user_path(current_user)
    else
      flash[:warning] = "Try again..."
      redirect_to login_path
    end
  end

  # Destroy A User Session
  def destroy
    logout
    flash[:notice] = "Logged Out"
    redirect_to root_path
  end

  private

  # Define login parameters
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
