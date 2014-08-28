require 'test_helper'

class RouteThingsToChecksControllerTest < ActionController::TestCase
  setup do
    @route_things_to_check = route_things_to_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:route_things_to_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route_things_to_check" do
    assert_difference('RouteThingsToCheck.count') do
      post :create, route_things_to_check: { name: @route_things_to_check.name }
    end

    assert_redirected_to route_things_to_check_path(assigns(:route_things_to_check))
  end

  test "should show route_things_to_check" do
    get :show, id: @route_things_to_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route_things_to_check
    assert_response :success
  end

  test "should update route_things_to_check" do
    patch :update, id: @route_things_to_check, route_things_to_check: { name: @route_things_to_check.name }
    assert_redirected_to route_things_to_check_path(assigns(:route_things_to_check))
  end

  test "should destroy route_things_to_check" do
    assert_difference('RouteThingsToCheck.count', -1) do
      delete :destroy, id: @route_things_to_check
    end

    assert_redirected_to route_things_to_checks_path
  end
end
