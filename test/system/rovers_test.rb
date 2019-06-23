require "application_system_test_case"

class RoversTest < ApplicationSystemTestCase
  setup do
    @rover = rovers(:one)
  end

  test "visiting the index" do
    visit rovers_url
    assert_selector "h1", text: "Rovers"
  end

  test "creating a Rover" do
    visit rovers_url
    click_on "New Rover"

    click_on "Create Rover"

    assert_text "Rover was successfully created"
    click_on "Back"
  end

  test "updating a Rover" do
    visit rovers_url
    click_on "Edit", match: :first

    click_on "Update Rover"

    assert_text "Rover was successfully updated"
    click_on "Back"
  end

  test "destroying a Rover" do
    visit rovers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rover was successfully destroyed"
  end
end
