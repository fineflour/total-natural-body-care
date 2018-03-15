require 'test_helper'

class OnlineBookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get online_bookings_index_url
    assert_response :success
  end

  test "should get show" do
    get online_bookings_show_url
    assert_response :success
  end

  test "should get new" do
    get online_bookings_new_url
    assert_response :success
  end

  test "should get create" do
    get online_bookings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get online_bookings_destroy_url
    assert_response :success
  end

end
