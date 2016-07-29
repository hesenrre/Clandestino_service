class Api::V1::Clients::InvitationsController < Api::V1::BaseController
  def show
    render plain: "invitation #{params[:id]}"
  end
end
