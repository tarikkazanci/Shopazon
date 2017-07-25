class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

# error handling

  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
  rescue_from NoMethodError, with: :no_method_error


  def no_method_error
    redirect_to '/', notice: "You need to sign up or sign in"
  end

  private
  def couldnt_find_record
    redirect_to '/', alert: "That record doesn't exist!"
  end

  protected

 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname])
  end

end
