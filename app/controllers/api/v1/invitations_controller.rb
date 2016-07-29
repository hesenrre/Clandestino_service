class Api::V1::InvitationsController < Api::V1::BaseController
  def index
    @attendants = MealEvent.find(params[:event_id]).invitations
  end

  def show
    @attendant = Invitation.find(params[:id])
  end
end
