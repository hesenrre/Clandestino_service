class Api::V1::DeliveryAddressesController < Api::V1::BaseController
  def show
    @address = DeliveryAddress.find(params[:id])
    p @address
  end
end
