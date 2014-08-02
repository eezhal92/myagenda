class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # for custom field on registration 1
  # before_action :configure_devise_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|    
    redirect_to root_url, :alert => exception.message
  end

 # for custom field on registration 2
 #  protected

 #    def configure_devise_permitted_parameters
 #      registration_params = [:full_name, :email, :password, :password_confirmation]

 #      if params[:action] == 'update'
 #        devise_parameter_sanitizer.for(:account_update) { 
 #          |u| u.permit(registration_params << :current_password)
 #        }
 #      elsif params[:action] == 'create'
 #        devise_parameter_sanitizer.for(:sign_up) { 
 #        |u| u.permit(registration_params) 
 #      }
 #   	end
 # 	  end

end
