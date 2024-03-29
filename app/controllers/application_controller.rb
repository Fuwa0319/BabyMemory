class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configuref_perameters, if: :devise_controller?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end

  def configuref_perameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:baby_name, :baby_name_kana, :first_name_kana, :birthday, :parent_id, :gender_id])
  end
end
