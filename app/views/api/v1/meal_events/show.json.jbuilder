json.merge! @event.attributes
json.address api_v1_event_addresses_url(@event, format: :json)
json.clients api_v1_event_attendants_url(@event, format: :json)
json.chefs api_v1_event_chefs_url(@event, format: :json)
