class Api::V1::PhonesController < Api::V1::BaseController
  def show
    @phone = Phone.find(params[:id])
  end
end
