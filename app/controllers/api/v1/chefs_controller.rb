class Api::V1::ChefsController < Api::V1::BaseController
  def index
    @chefs = MealEvent.find(params[:event_id]).event_chefs
  end

  def show
    @chef = EventChef.find(params[:id])
  end
end
