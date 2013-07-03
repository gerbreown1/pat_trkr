class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :check_authorization
  
private
    def check_authorization
        unless current_user.can?(action_name, controller_name)
        redirect_to :back,
        :error => "You are not authorized to view the page you requested!"
    end
end
