require 'test_helper'

class EquipmentThingsToChecksControllerTest < ActionController::TestCase
  setup do
    @equipment_things_to_check = equipment_things_to_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_things_to_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_things_to_check" do
    assert_difference('EquipmentThingsToCheck.count') do
      post :create, equipment_things_to_check: { name: @equipment_things_to_check.name }
    end

    assert_redirected_to equipment_things_to_check_path(assigns(:equipment_things_to_check))
  end

  test "should show equipment_things_to_check" do
    get :show, id: @equipment_things_to_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_things_to_check
    assert_response :success
  end

  test "should update equipment_things_to_check" do
    patch :update, id: @equipment_things_to_check, equipment_things_to_check: { name: @equipment_things_to_check.name }
    assert_redirected_to equipment_things_to_check_path(assigns(:equipment_things_to_check))
  end

  test "should destroy equipment_things_to_check" do
    assert_difference('EquipmentThingsToCheck.count', -1) do
      delete :destroy, id: @equipment_things_to_check
    end

    assert_redirected_to equipment_things_to_checks_path
  end
end
