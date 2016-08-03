class Api::V1::CallsController < Api::V1::BaseController
  def show
    @call = Call.find(params[:id])
  end
end
