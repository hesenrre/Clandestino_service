json.array! @calls do |call|
  json.id call.id
  json.status call.status
  json.name call.meal_event.name
  json.url api_v1_call_url(call, format: :json)
end
