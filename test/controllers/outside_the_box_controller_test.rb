require 'test_helper'

class OutsideTheBoxControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get release" do
    get :release
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get shopping_cart" do
    get :shopping_cart
    assert_response :success
  end

end
