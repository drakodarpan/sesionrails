class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale
  before_filter :configure_permitted_parameters, :if => :devise_controller?
  
  def set_locale
    I18n.locale = params[:locale]
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :password)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :first_name, :last_name, :email, :password, :current_password, :avatar)}
  end
end