require "application_system_test_case"

class PetServicesTest < ApplicationSystemTestCase
  setup do
    @pet_service = pet_services(:one)
  end

  test "visiting the index" do
    visit pet_services_url
    assert_selector "h1", text: "Pet Services"
  end

  test "creating a Pet service" do
    visit pet_services_url
    click_on "New Pet Service"

    fill_in "Description", with: @pet_service.description
    fill_in "Duration", with: @pet_service.duration
    fill_in "Estimate time", with: @pet_service.estimate_time
    fill_in "Name", with: @pet_service.name
    fill_in "Pataz amount", with: @pet_service.pataz_amount
    fill_in "Pataz value free", with: @pet_service.pataz_value_free
    fill_in "Price", with: @pet_service.price
    fill_in "User", with: @pet_service.user_id
    click_on "Create Pet service"

    assert_text "Pet service was successfully created"
    click_on "Back"
  end

  test "updating a Pet service" do
    visit pet_services_url
    click_on "Edit", match: :first

    fill_in "Description", with: @pet_service.description
    fill_in "Duration", with: @pet_service.duration
    fill_in "Estimate time", with: @pet_service.estimate_time
    fill_in "Name", with: @pet_service.name
    fill_in "Pataz amount", with: @pet_service.pataz_amount
    fill_in "Pataz value free", with: @pet_service.pataz_value_free
    fill_in "Price", with: @pet_service.price
    fill_in "User", with: @pet_service.user_id
    click_on "Update Pet service"

    assert_text "Pet service was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet service" do
    visit pet_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet service was successfully destroyed"
  end
end
