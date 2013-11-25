class ApplicationController < ActionController::Base
  protect_from_forgery
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

  def default_url_options(options={})
    { :locale => I18n.locale == I18n.default_locale ? session[:locale] : I18n.locale  }
  end
end
