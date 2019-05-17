require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_url
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post trips_url, params: { trip: { actual_count: @trip.actual_count, cost: @trip.cost, gross_earned: @trip.gross_earned, net_earned: @trip.net_earned, req_count: @trip.req_count, resort_city: @trip.resort_city, resort_rating: @trip.resort_rating, resort_state: @trip.resort_state, ski_resort: @trip.ski_resort, trip_date: @trip.trip_date, trip_days: @trip.trip_days, trip_distance: @trip.trip_distance } }
    end

    assert_redirected_to trip_url(Trip.last)
  end

  test "should show trip" do
    get trip_url(@trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_url(@trip)
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { actual_count: @trip.actual_count, cost: @trip.cost, gross_earned: @trip.gross_earned, net_earned: @trip.net_earned, req_count: @trip.req_count, resort_city: @trip.resort_city, resort_rating: @trip.resort_rating, resort_state: @trip.resort_state, ski_resort: @trip.ski_resort, trip_date: @trip.trip_date, trip_days: @trip.trip_days, trip_distance: @trip.trip_distance } }
    assert_redirected_to trip_url(@trip)
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete trip_url(@trip)
    end

    assert_redirected_to trips_url
  end
end
