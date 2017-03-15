class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = "Good job!"
      redirect_to user_path(@user)
    else
      flash[:warning] = ":( Try again..."
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "Logged Out"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
