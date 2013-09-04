require 'test_helper'

class AssertionTest < ActiveSupport::TestCase

  def setup
    @one = assertions(:one)
    @one.user_id = users(:one).id
    @one.version_id = versions(:one).id
    @one.save!
  end

  # Belongs to User
  test "belongs to user one" do
    assert(@one.user.id, users(:one).id)
  end

  # Belongs to Version
  test "belongs to version one" do
    assert(@one.version.id, versions(:one).id)
  end

end
