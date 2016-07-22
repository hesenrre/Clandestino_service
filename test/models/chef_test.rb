require 'test_helper'

class ChefTest < ActiveSupport::TestCase

  test "Chef relation" do
    chef = Chef.find(1)
    assert_not_nil chef, "Chef must exist"
    assert_not_nil chef.person, "Chef should have person related"
    assert_not_nil chef.contract, "Chef should have a contract related"
    assert (chef.meal_events and not chef.meal_events.empty?),
    "Chef should have meal events"
    assert (chef.chef_galleries and not chef.meal_events.empty?),
    "Chef should have chef galleries"
    assert (chef.phones and not chef.phones.empty?),
    "Chef should have phones"
  end

end
