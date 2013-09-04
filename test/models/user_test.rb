require 'test_helper'

class UserTest < ActiveSupport::TestCase

  # Comments
  test "user one has one comment" do
    assert(users(:one).comments.size, 1)
  end
  
  test "user two has two comments" do
    assert(users(:two).comments.size, 2)
  end

  test "user comments are comment instances" do
    users(:two).versions.each do |comment|
      assert_instance_of(comment, Comment)
    end
  end

  # Versions
  test "user one has two versions" do
    assert(users(:one).versions.size, 2)
  end

  test "user two has one version" do
    assert(users(:two).versions.size, 1)
  end

  test "user versions are version instances" do
    users(:one).versions.each do |version|
      assert_instance_of(verison, Version)
    end
  end

  # Assertions
  test "user one has two assertions" do
    assert(users(:one).assertions.size, 2)
  end

  test "user two has one assertion" do
    assert(users(:two).assertions.size, 1)
  end

end
