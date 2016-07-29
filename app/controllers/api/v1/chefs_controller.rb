class Api::V1::ChefsController < Api::V1::BaseController
  def index
    @chefs = MealEvent.find(params[:event_id]).calls
  end

  def show
    @chef = Call.find(params[:id])
  end
end
