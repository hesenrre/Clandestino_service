json.extract! @invitation, :id, :meal_event_id, :event_rate,
                           :chef_rate, :meal_rate, :status, :guest

json.extract! @invitation.meal_event, :name, :event_date, :confirmation_deadline,
:provider_confirmation_deadline, :baseprice, :min_attendants, :max_attendants,
:max_guest, :description, :instructions, :rules

json.event_status @invitation.meal_event.status
json.event_address api_v1_address_url(@invitation.meal_event.address, format: :json)
