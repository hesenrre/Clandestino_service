require 'test_helper'

class ChefMediaGroupTest < ActiveSupport::TestCase
  test "Chef Media Groups relations" do
    cmg = ChefMediaGroup.first
    assert_not_nil cmg, "Should exist media group"
    assert_not_nil cmg.chef_gallery, "Must have a chef gallery related"
    assert_not_nil cmg.medium, "Mush have media related"
  end
end
