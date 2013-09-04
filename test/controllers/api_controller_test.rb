require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get publish" do
    get :publish
    assert_response :success
  end

  test "should get localize" do
    get :localize
    assert_response :success
  end

  test "should get authenticate" do
    get :authenticate
    assert_response :success
  end

  test "should get take" do
    get :take
    assert_response :success
  end

end
