require "application_system_test_case"

class RidesTest < ApplicationSystemTestCase
  setup do
    @ride = rides(:one)
  end

  test "visiting the index" do
    visit rides_url
    assert_selector "h1", text: "Rides"
  end

  test "creating a Ride" do
    visit rides_url
    click_on "New Ride"

    fill_in "Description", with: @ride.description
    fill_in "Latitude", with: @ride.latitude
    fill_in "Longitude", with: @ride.longitude
    fill_in "Name", with: @ride.name
    fill_in "Park", with: @ride.park_id
    fill_in "Type of ride", with: @ride.type_of_ride
    click_on "Create Ride"

    assert_text "Ride was successfully created"
    click_on "Back"
  end

  test "updating a Ride" do
    visit rides_url
    click_on "Edit", match: :first

    fill_in "Description", with: @ride.description
    fill_in "Latitude", with: @ride.latitude
    fill_in "Longitude", with: @ride.longitude
    fill_in "Name", with: @ride.name
    fill_in "Park", with: @ride.park_id
    fill_in "Type of ride", with: @ride.type_of_ride
    click_on "Update Ride"

    assert_text "Ride was successfully updated"
    click_on "Back"
  end

  test "destroying a Ride" do
    visit rides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ride was successfully destroyed"
  end
end
