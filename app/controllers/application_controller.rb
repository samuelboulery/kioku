class ApplicationController < ActionController::Base

   before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :avatar])
  end

  def after_sign_in_path_for(resource)
    if resource.is_a? Photographer
      stored_location_for(resource) || professional_root_path
    else
      stored_location_for(resource) || director_root_path
    end
  end
end
