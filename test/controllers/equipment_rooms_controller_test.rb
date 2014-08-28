require 'test_helper'

class EquipmentRoomsControllerTest < ActionController::TestCase
  setup do
    @equipment_room = equipment_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_room" do
    assert_difference('EquipmentRoom.count') do
      post :create, equipment_room: {  }
    end

    assert_redirected_to equipment_room_path(assigns(:equipment_room))
  end

  test "should show equipment_room" do
    get :show, id: @equipment_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_room
    assert_response :success
  end

  test "should update equipment_room" do
    patch :update, id: @equipment_room, equipment_room: {  }
    assert_redirected_to equipment_room_path(assigns(:equipment_room))
  end

  test "should destroy equipment_room" do
    assert_difference('EquipmentRoom.count', -1) do
      delete :destroy, id: @equipment_room
    end

    assert_redirected_to equipment_rooms_path
  end
end
