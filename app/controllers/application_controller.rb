class ApplicationController < ActionController::Base
  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name email password password_confirmation])
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password password_confirmation])
  end

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to spash_index_path, notice: 'You must be logged in to access this section'
    end
  end
end
