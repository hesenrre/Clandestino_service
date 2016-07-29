json.array! @addresses do |da|
  json.label da.label
  json.merge! da.address.attributes
end
