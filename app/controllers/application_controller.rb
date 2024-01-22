class ApplicationController < ActionController::Base
  before_action :set_time_zone, if: :user_signed_in?
  before_action :authenticate_user!
  before_action :configure_permitted_params, if: :devise_controller?
  protect_from_forgery with: :exception

  private

  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :role, :organization_id])
  end

  def set_time_zone
    Time.zone = "London"
  end
end
