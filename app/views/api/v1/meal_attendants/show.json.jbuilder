json.extract! @attendant, :id, :event_rate, :chef_rate, :meal_rate, :guest, :status
json.extract! @attendant.person, :name, :photo
json.phones @attendant.client.phones, :id, :number, :ext, :label
json.interests @attendant.client.interests, :id, :label, :icon
json.food_preferences @attendant.client.food_styles, :id, :label, :icon
json.addresses do
  json.url api_v1_attendant_addresses_url(@attendant, format: :json)
  json.summary  @attendant.client.delivery_addresses do |addr|
    json.extract! addr, :address_id, :label
    json.url api_v1_address_url(addr.address, format: :json)
  end
end
