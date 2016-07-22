require 'test_helper'

class ChefGalleryTest < ActiveSupport::TestCase

  test "chef relations" do
    chef_gallery = ChefGallery.find(1)
    assert_not_nil chef_gallery, "Should be a gallery"
    assert_not_nil chef_gallery.chef, "Must have a chef"
    assert_not_nil chef_gallery.chef_media_group, "Should have a media group"
  end

end
