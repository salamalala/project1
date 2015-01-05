class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  load_and_authorize_resource unless: :devise_controller?

  protect_from_forgery with: :exception




  before_filter :configure_devise_params, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
      redirect_to "/", alert: "You are not GA staff right? Go back home and practice shithard on your code skills, so you can become a GA-teacher. And then you can access this page!"
    end

  def configure_devise_params
    [:sign_up, :account_update].each do |action|
      devise_parameter_sanitizer.for(action) do |u|
        u.permit(:prename, :lastname, :dob, :email, :password, :password_confirmation, :current_password, :remote_user_image_url)
      end
    end
  end

  def after_update_path_for(resource)
    my_profile_path
  end



end
