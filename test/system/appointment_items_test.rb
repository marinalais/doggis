require "application_system_test_case"

class AppointmentItemsTest < ApplicationSystemTestCase
  setup do
    @appointment_item = appointment_items(:one)
  end

  test "visiting the index" do
    visit appointment_items_url
    assert_selector "h1", text: "Appointment Items"
  end

  test "creating a Appointment item" do
    visit appointment_items_url
    click_on "New Appointment Item"

    fill_in "Appointment", with: @appointment_item.appointment_id
    fill_in "Petservice", with: @appointment_item.petservice_id
    click_on "Create Appointment item"

    assert_text "Appointment item was successfully created"
    click_on "Back"
  end

  test "updating a Appointment item" do
    visit appointment_items_url
    click_on "Edit", match: :first

    fill_in "Appointment", with: @appointment_item.appointment_id
    fill_in "Petservice", with: @appointment_item.petservice_id
    click_on "Update Appointment item"

    assert_text "Appointment item was successfully updated"
    click_on "Back"
  end

  test "destroying a Appointment item" do
    visit appointment_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appointment item was successfully destroyed"
  end
end
