class ApplicationController < ActionController::Base
  before_action :authenticate_restaurant!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :instagram_url, :tripadvisor_url, :facebook_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :instagram_url, :tripadvisor_url, :facebook_url])
  end
end
