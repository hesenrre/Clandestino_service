class Api::V1::AddressesController < Api::V1::BaseController
  def index
    @addresses =  if params.has_key? :event_id
      [MealEvent.find(params[:event_id]).address]
    elsif params.has_key? :attendant_id
      Invitation.find(params[:attendant_id]).client.delivery_addresses
    else
      Address.all
    end
  end

  def show
    @address = Address.find(params[:id])
  end
end
