require 'test_helper'

class RouteSubTypesControllerTest < ActionController::TestCase
  setup do
    @route_sub_type = route_sub_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:route_sub_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route_sub_type" do
    assert_difference('RouteSubType.count') do
      post :create, route_sub_type: { name: @route_sub_type.name }
    end

    assert_redirected_to route_sub_type_path(assigns(:route_sub_type))
  end

  test "should show route_sub_type" do
    get :show, id: @route_sub_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route_sub_type
    assert_response :success
  end

  test "should update route_sub_type" do
    patch :update, id: @route_sub_type, route_sub_type: { name: @route_sub_type.name }
    assert_redirected_to route_sub_type_path(assigns(:route_sub_type))
  end

  test "should destroy route_sub_type" do
    assert_difference('RouteSubType.count', -1) do
      delete :destroy, id: @route_sub_type
    end

    assert_redirected_to route_sub_types_path
  end
end
