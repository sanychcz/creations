class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl
  before_filter :set_locale

  include SessionsHelper

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end

  helper_method :current_user

  def set_locale
      I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
      session[:locale] = I18n.locale  # store locale to session
  end
end
