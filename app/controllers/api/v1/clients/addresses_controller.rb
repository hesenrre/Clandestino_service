class Api::V1::Clients::AddressesController < Api::V1::BaseController
  def show
    @address = DeliveryAddress.find(params[:id])
    p @address
  end
end
