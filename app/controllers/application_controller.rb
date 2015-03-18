class ApplicationController < ActionController::Base

before_filter :require_login
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  # helper_method :current_user

  def not_authenticated 
    redirect_to login_path, alert: "Please login first"
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to projects_url, :alert => exception.message
  end
end
