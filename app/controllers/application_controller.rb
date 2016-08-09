class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :profile_pic, :owner])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :profile_pic, :profile_pic_cache, :owner])
    end
end
