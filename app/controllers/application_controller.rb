class ApplicationController < ActionController::Base
  before_action :authenticate_restaurant!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :find_current_session

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :instagram_url, :tripadvisor_url, :facebook_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :instagram_url, :tripadvisor_url, :facebook_url])
  end

  def find_current_session
    @current_session = Session.find_by_id(cookies.signed[:session_id])
  end
end
