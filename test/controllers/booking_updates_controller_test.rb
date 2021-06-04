require 'test_helper'

class BookingUpdatesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get booking_updates_new_url
    assert_response :success
  end

  test "should get index" do
    get booking_updates_index_url
    assert_response :success
  end

end
