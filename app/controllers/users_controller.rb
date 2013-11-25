class UsersController < ApplicationController
  before_filter :signed_in_user
  layout "admin"

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/admin/users"
    else
      render 'new' 
    end   
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to "/admin/users"   
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
