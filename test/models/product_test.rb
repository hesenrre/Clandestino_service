require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "Product relations" do
    prod = Product.first
    assert_not_nil prod, "Should exists at least one product"
    assert_not_nil prod.event_product, "Must have an event_product"
    assert (prod.meal_events and not prod.meal_events.empty?),
    "should have meal_events"
    assert (prod.providers and not prod.providers.empty?),
    "shold have providers"
  end
end
