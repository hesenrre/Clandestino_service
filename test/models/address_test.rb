require 'test_helper'

class AddressTest < ActiveSupport::TestCase

  test "Delivery address correct relations" do
    da = Address.find(1)
    assert_not_nil da, "Should exist delivery address"
    assert_not_nil da.delivery_address,
    "Should exist delivery_addresses relation"
  end

  test "Meal Event Address correct relations" do
    mea = Address.find(3)
    assert_not_nil mea, "Should exist meal event address"
    assert (mea.meal_events and not mea.meal_events.empty?),
    "Should have meal_events"
  end

  test "Provider Address correct relations" do
    pa = Address.find(4)
    assert_not_nil pa, "Should exist provider address"
    assert (pa.provider_addresses and not pa.provider_addresses.empty?),
    "Should have provider_addresses"
  end
end
