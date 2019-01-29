require 'test_helper'

class TripPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_plan = trip_plans(:one)
  end

  test "should get index" do
    get trip_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_plan_url
    assert_response :success
  end

  test "should create trip_plan" do
    assert_difference('TripPlan.count') do
      post trip_plans_url, params: { trip_plan: {  } }
    end

    assert_redirected_to trip_plan_url(TripPlan.last)
  end

  test "should show trip_plan" do
    get trip_plan_url(@trip_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_plan_url(@trip_plan)
    assert_response :success
  end

  test "should update trip_plan" do
    patch trip_plan_url(@trip_plan), params: { trip_plan: {  } }
    assert_redirected_to trip_plan_url(@trip_plan)
  end

  test "should destroy trip_plan" do
    assert_difference('TripPlan.count', -1) do
      delete trip_plan_url(@trip_plan)
    end

    assert_redirected_to trip_plans_url
  end
end
