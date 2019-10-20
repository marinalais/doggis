require 'test_helper'

class PetServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_service = pet_services(:one)
  end

  test "should get index" do
    get pet_services_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_service_url
    assert_response :success
  end

  test "should create pet_service" do
    assert_difference('PetService.count') do
      post pet_services_url, params: { pet_service: { description: @pet_service.description, duration: @pet_service.duration, estimate_time: @pet_service.estimate_time, name: @pet_service.name, pataz_amount: @pet_service.pataz_amount, pataz_value_free: @pet_service.pataz_value_free, price: @pet_service.price, user_id: @pet_service.user_id } }
    end

    assert_redirected_to pet_service_url(PetService.last)
  end

  test "should show pet_service" do
    get pet_service_url(@pet_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_service_url(@pet_service)
    assert_response :success
  end

  test "should update pet_service" do
    patch pet_service_url(@pet_service), params: { pet_service: { description: @pet_service.description, duration: @pet_service.duration, estimate_time: @pet_service.estimate_time, name: @pet_service.name, pataz_amount: @pet_service.pataz_amount, pataz_value_free: @pet_service.pataz_value_free, price: @pet_service.price, user_id: @pet_service.user_id } }
    assert_redirected_to pet_service_url(@pet_service)
  end

  test "should destroy pet_service" do
    assert_difference('PetService.count', -1) do
      delete pet_service_url(@pet_service)
    end

    assert_redirected_to pet_services_url
  end
end
