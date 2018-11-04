require 'test_helper'

class ParkingMetersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_meter = parking_meters(:one)
  end

  test "should get index" do
    get parking_meters_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_meter_url
    assert_response :success
  end

  test "should create parking_meter" do
    assert_difference('ParkingMeter.count') do
      post parking_meters_url, params: { parking_meter: { lattitude: @parking_meter.lattitude, longitude: @parking_meter.longitude, name: @parking_meter.name, status: @parking_meter.status } }
    end

    assert_redirected_to parking_meter_url(ParkingMeter.last)
  end

  test "should show parking_meter" do
    get parking_meter_url(@parking_meter)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_meter_url(@parking_meter)
    assert_response :success
  end

  test "should update parking_meter" do
    patch parking_meter_url(@parking_meter), params: { parking_meter: { lattitude: @parking_meter.lattitude, longitude: @parking_meter.longitude, name: @parking_meter.name, status: @parking_meter.status } }
    assert_redirected_to parking_meter_url(@parking_meter)
  end

  test "should destroy parking_meter" do
    assert_difference('ParkingMeter.count', -1) do
      delete parking_meter_url(@parking_meter)
    end

    assert_redirected_to parking_meters_url
  end
end
