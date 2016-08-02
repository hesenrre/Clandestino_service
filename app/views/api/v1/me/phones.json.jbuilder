json.array! @phones do |phone|
  json.extract! phone, :id, :label
  json.url api_v1_phone_url(phone, format: :json)
end
