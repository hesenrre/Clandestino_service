class Api::V1::ClientsController < Api::V1::BaseController
  def me
    @me = Client.find(1)
  end
end
