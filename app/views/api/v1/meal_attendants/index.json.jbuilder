json.array! @attendants do |attendant|
  json.extract! attendant, :id, :status, :event_rate, :chef_rate, :meal_rate
  json.name attendant.person.name
  json.email attendant.client.email
  json.url api_v1_attendant_url(attendant, format: :json)
end
