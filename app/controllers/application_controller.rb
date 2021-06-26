class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email]) # sign_upにemailを追加
  end
  Refile.secret_key = 'b01b6dbc2f6a34c9ae398e710afe67a610895a27eae7da5bc71a6ffb5d1b688b17aee9d0a2eca09a4313b8f943999bfaa6a88bbdb7094e532995aa1bf5e21b1b'
end
