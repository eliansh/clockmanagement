require "application_system_test_case"

class TrackingsTest < ApplicationSystemTestCase
  setup do
    @tracking = trackings(:one)
  end

  test "visiting the index" do
    visit trackings_url
    assert_selector "h1", text: "Trackings"
  end

  test "creating a Tracking" do
    visit trackings_url
    click_on "New Tracking"

    fill_in "Clock in out", with: @tracking.clock_in_out
    fill_in "Clock time", with: @tracking.clock_time
    fill_in "Date", with: @tracking.date
    fill_in "First name", with: @tracking.first_name
    fill_in "Last name", with: @tracking.last_name
    fill_in "User name", with: @tracking.user_name
    click_on "Create Tracking"

    assert_text "Tracking was successfully created"
    click_on "Back"
  end

  test "updating a Tracking" do
    visit trackings_url
    click_on "Edit", match: :first

    fill_in "Clock in out", with: @tracking.clock_in_out
    fill_in "Clock time", with: @tracking.clock_time
    fill_in "Date", with: @tracking.date
    fill_in "First name", with: @tracking.first_name
    fill_in "Last name", with: @tracking.last_name
    fill_in "User name", with: @tracking.user_name
    click_on "Update Tracking"

    assert_text "Tracking was successfully updated"
    click_on "Back"
  end

  test "destroying a Tracking" do
    visit trackings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tracking was successfully destroyed"
  end
end
