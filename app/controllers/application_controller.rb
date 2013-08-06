class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def logged_in?
    !!current_user
  end

  def current_user 
    @user ||= User.find_by_id(session[:id]) if session[:id]
  end
end
