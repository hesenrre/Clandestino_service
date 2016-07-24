class Api::V1::MealAttendantsController < Api::V1::BaseController
  def index
    @attendants = MealEvent.find(params[:event_id]).meal_attendants
  end

  def show
    @attendant = MealAttendant.find(params[:id])
  end
end
