class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :company, :dept, :address, :tel, :fax])
  end

  private
  def after_sign_in_path_for(resource)
    case resource
    when Admin
      '/admins'
    when User
      root_path
    end
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
    '/products'
  end

end
