require 'test_helper'

class EventProductTest < ActiveSupport::TestCase
  test "EventProduct Relations" do
    ep = EventProduct.first
    assert_not_nil ep, "Must exists an EventProduct"
    assert_not_nil ep.meal_event,"Must have an event"
    assert_not_nil ep.product,"Must have a product"
    assert (ep.command_items and not ep.command_items.empty?),
    "Should have command_items"
    assert (ep.clients and not ep.clients.empty?),
    "Should have clients"
  end
end
