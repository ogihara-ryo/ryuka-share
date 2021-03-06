class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  before_action :signin_required

  def redirect_back_or(default)
    redirect_to(session[:request_from] || default)
    session[:request_from] = nil
  end

  private

  # サインインしていなければ、サインインページへリダイレクト
  def signin_required
    return if signed_in?
    set_request_from
    redirect_to signin_path
  end

  # どこのページからリクエストが来たか保存しておく
  def set_request_from
    session[:request_from] = request.fullpath
  end
end
