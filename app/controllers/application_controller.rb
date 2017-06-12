class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record

# error handling
  private
  def couldnt_find_record
    redirect_to '/', alert: "That record doesn't exist!"
  end
end
