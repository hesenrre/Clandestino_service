require 'test_helper'

class MealEventTest < ActiveSupport::TestCase
  test "MealEvent has correct relations" do
    event = MealEvent.first
    assert event, "event should exists"
    assert (event.meal_attendants and not event.meal_attendants.empty?),
    "event should have attendants"
    assert event.clients.first,
    "attendant must have client related"
    assert (event.event_chefs and not event.event_chefs.empty?),
    "event should have event chefs"
    assert event.chefs.first,
    "event should have chefs"
    assert event.event_galleries,
    "event should have galleries"
    assert event.event_galleries.first.event_media_group,
    "event should have related event media group"
    assert event.address,
    "event should have an address related"
    assert (event.event_providers and not event.event_providers.empty?),
    "event should have an event providers related"
  end
end
