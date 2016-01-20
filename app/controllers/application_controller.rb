class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #before_action :configure_permitted_parameters, if: :devise_controller?

  #protected

  #def configure_permitted_parameters
  #  devise_parameter_sanitizer.permit(:sign_in) do |stakeholder_params|
  #    stakeholder_params.permit(:email, :name, :lastname)
  #  end
  #end
end
