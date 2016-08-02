json.array! @addresses do |da|
  json.id da.address.id
  json.label da.label
  json.url api_v1_delivery_address_url(da, format: :json)
end
