class Api::V1::Clients::MeController < Api::V1::BaseController
  def index
    @me = Client.find(1)
  end

  def addresses
    @addresses = Client.find(1).delivery_addresses
  end
end
