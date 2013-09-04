require 'test_helper'

class UtilityTest < ActiveSupport::TestCase
  # Versions

  test "utility one has two versions" do
    assert(utilities(:one).versions.size, 2)
  end

  test "utility two has one version" do
    assert(utilities(:two).versions.size, 1)
  end

  test "versions are all version instances" do
    utilities(:two).versions.each do |version|
      assert_instance_of(version, Version)
    end
  end


end
