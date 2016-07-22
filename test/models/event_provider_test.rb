require 'test_helper'

class EventProviderTest < ActiveSupport::TestCase
  test "Event Provider Relations" do
    e = EventProvider.first
    assert_not_nil e, "Should be an EventProvider"
    assert_not_nil e.meal_event, "Must have an event"
    assert_not_nil e.provider, "Must have a provider"
    assert_not_nil e.contract, "Must have a contract"
  end
end
