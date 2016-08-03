json.extract! @call, :id, :status, :priority

json.extract! @call.meal_event, :name, :event_date, :confirmation_deadline,
:provider_confirmation_deadline, :description, :instructions, :rules

json.event_status @call.meal_event.status
json.event_address api_v1_address_url(@call.meal_event.address, format: :json)
