require 'test_helper'

class VersionTest < ActiveSupport::TestCase

  def setup
    @one = versions(:one)
    @one.utility_id = utilities(:one).id
    @one.user_id = users(:one).id
    [:one, :two].each do |name|
      comments(name).version_id = @one.id
      comments(name).save!
      assertions(name).version_id = @one.id
      assertions(name).save!
    end
    @one.save!
  end

  # Has One Utility

  test "assert utility is assigned" do
    assert(@one.utility.id, utilities(:one).id)
  end

  # Has One User

  test "assert user is assigned" do
    assert(@one.user.id, users(:one).id)
  end

  # Has Many Comments

  test "assert has two comments" do
    assert(@one.comments.size, 2)
  end

  # Has Many Assertions

  test "assert has two assertions" do
    assert(@one.assertions.size, 2)
  end


end
