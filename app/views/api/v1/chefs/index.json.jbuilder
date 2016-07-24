json.array! @chefs do |ec|
  json.extract! ec, :status, :priority
  json.id ec.chef.id
  json.name ec.chef.person.name
  json.url api_v1_chef_url(ec, format: :json)
end
