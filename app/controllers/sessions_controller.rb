class SessionsController < ApplicationController
  layout :resolve_layout

  def new 
  end

  def create 
    user =User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash.now.alert = 'Invalid email or password'
      render 'new'
    end 
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private

    def resolve_layout
      case action_name
      when "new"
        "admin"
      else
        "application"
      end
    end
end
