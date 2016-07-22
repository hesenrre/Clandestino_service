require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  test "Provider relations" do
    pro = Provider.find(1)
    assert_not_nil pro, "should have a provider"
    assert (pro.provider_contacts and not pro.provider_contacts.empty?),
    "should have provider_contacts"
    assert (pro.meal_events and not pro.meal_events.empty?),
    "should have meal_events"
    assert (pro.provider_addresses and not pro.provider_addresses.empty?),
    "should have provider_addresses"
    assert (pro.phones and not pro.phones.empty?),
    "should have phones"
    assert (pro.provider_products and not pro.provider_products.empty?),
    "should have provider_products"
    assert (pro.products and not pro.products.empty?),
    "should have products"
  end
end
