require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trips_new_url
    assert_response :success
  end

  test "should get create" do
    get trips_create_url
    assert_response :success
  end

  test "should get flight_details" do
    get trips_flight_details_url
    assert_response :success
  end

  test "should get hotel_details" do
    get trips_hotel_details_url
    assert_response :success
  end

  test "should get budget" do
    get trips_budget_url
    assert_response :success
  end

  test "should get summary" do
    get trips_summary_url
    assert_response :success
  end
end
