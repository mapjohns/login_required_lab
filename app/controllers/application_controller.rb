class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    if current_user == nil
      flash[:alert] = "You must be logged in to continue"
      redirect_to '/login'
    end
  end
  
  def current_user
    session[:name].nil? ? nil : session[:name]
  end
end
