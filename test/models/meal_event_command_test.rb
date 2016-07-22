require 'test_helper'

class MealEventCommandTest < ActiveSupport::TestCase
  test "MealEventCommand Relations" do
    ec = MealEventCommand.first
    assert_not_nil ec, "Must exist a MealEventCommand"
    assert_not_nil ec.client, "Must have a client"
    assert (ec.event_products and not ec.event_products.empty?),
    "Should have event_products"
    assert (ec.event_payments and not ec.event_payments.empty?),
    "should have event_payments"
  end
end
