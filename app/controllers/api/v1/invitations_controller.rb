class Api::V1::InvitationsController < Api::V1::BaseController
  def index
    @invitations = MealEvent.find(params[:event_id]).invitations
  end

  def show
    @invitation = Invitation.find(params[:id])
  end
end
