class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Get access to all Pundit methods (authorize, verify_authrized etc.)
  include Pundit
  # Will check that EVERY action in ENTIRE APPLICATION has "authorized" method
  # after_action :verify_authorized
  include ApplicationHelper
  	helper_method :current_user
end
