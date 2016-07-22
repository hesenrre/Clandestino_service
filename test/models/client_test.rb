require 'test_helper'

class ClientTest < ActiveSupport::TestCase

  test "Client relations" do
    c = Client.find(1)
    assert_not_nil c, "Client must exist"
    assert_not_nil c.person, "Client should have person related"
    assert (c.interests and not c.interests.empty?),
    "Client should have interests"
    assert (c.food_styles and not c.food_styles.empty?),
    "Client should have interests"
    assert (c.addresses and not c.addresses.empty?),
    "Client should have addresses"
    assert (c.meal_events and not c.meal_events.empty?),
    "Client should have events"
    assert (c.phones and not c.phones.empty?),
    "Client should have phones"
    assert (c.meal_event_commands and not c.meal_event_commands.empty?),
    "Client should have meal_event_commands"
  end
end
