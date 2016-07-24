if params.has_key? :attendant_id
  # these are  delivery_addresses
  json.array! @addresses do |da|
    json.label da.label
    json.merge! da.address.attributes
  end
else
  # thess are plain addresses
  json.array! @addresses
end
