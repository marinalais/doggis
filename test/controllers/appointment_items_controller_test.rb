require 'test_helper'

class AppointmentItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment_item = appointment_items(:one)
  end

  test "should get index" do
    get appointment_items_url
    assert_response :success
  end

  test "should get new" do
    get new_appointment_item_url
    assert_response :success
  end

  test "should create appointment_item" do
    assert_difference('AppointmentItem.count') do
      post appointment_items_url, params: { appointment_item: { appointment_id: @appointment_item.appointment_id, petservice_id: @appointment_item.petservice_id } }
    end

    assert_redirected_to appointment_item_url(AppointmentItem.last)
  end

  test "should show appointment_item" do
    get appointment_item_url(@appointment_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointment_item_url(@appointment_item)
    assert_response :success
  end

  test "should update appointment_item" do
    patch appointment_item_url(@appointment_item), params: { appointment_item: { appointment_id: @appointment_item.appointment_id, petservice_id: @appointment_item.petservice_id } }
    assert_redirected_to appointment_item_url(@appointment_item)
  end

  test "should destroy appointment_item" do
    assert_difference('AppointmentItem.count', -1) do
      delete appointment_item_url(@appointment_item)
    end

    assert_redirected_to appointment_items_url
  end
end
