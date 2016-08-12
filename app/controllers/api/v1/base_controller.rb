class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :destroy_session

  def destroy_session
    request.session_options[:skip] = true
  end

  def authorized_roles(*roles)
    render json: {error: "unauthorized user"}, status: 401 unless current_user.is_in_roles(*roles)
  end
end
