class Api::V1::MealEventsController < Api::V1::BaseController
  def index
    @events = MealEvent.all
  end

  def show
    @event = MealEvent.find(params[:id])
  end
end
