json.extract! @chef, :status, :priority
json.email @chef.chef.email
json.merge! @chef.person.attributes
