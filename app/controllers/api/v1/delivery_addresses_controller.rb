class Api::V1::DeliveryAddressesController < Api::V1::BaseController
  def show
    @delivery_address = DeliveryAddress.find(params[:id])
  end
end
