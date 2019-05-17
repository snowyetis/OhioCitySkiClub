require 'test_helper'

class TrippaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trippayment = trippayments(:one)
  end

  test "should get index" do
    get trippayments_url
    assert_response :success
  end

  test "should get new" do
    get new_trippayment_url
    assert_response :success
  end

  test "should create trippayment" do
    assert_difference('Trippayment.count') do
      post trippayments_url, params: { trippayment: { client_id: @trippayment.client_id, cost: @trippayment.cost, date: @trippayment.date, payment_number: @trippayment.payment_number, service: @trippayment.service, status: @trippayment.status, trip_id: @trippayment.trip_id } }
    end

    assert_redirected_to trippayment_url(Trippayment.last)
  end

  test "should show trippayment" do
    get trippayment_url(@trippayment)
    assert_response :success
  end

  test "should get edit" do
    get edit_trippayment_url(@trippayment)
    assert_response :success
  end

  test "should update trippayment" do
    patch trippayment_url(@trippayment), params: { trippayment: { client_id: @trippayment.client_id, cost: @trippayment.cost, date: @trippayment.date, payment_number: @trippayment.payment_number, service: @trippayment.service, status: @trippayment.status, trip_id: @trippayment.trip_id } }
    assert_redirected_to trippayment_url(@trippayment)
  end

  test "should destroy trippayment" do
    assert_difference('Trippayment.count', -1) do
      delete trippayment_url(@trippayment)
    end

    assert_redirected_to trippayments_url
  end
end
