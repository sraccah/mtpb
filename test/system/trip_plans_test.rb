require "application_system_test_case"

class TripPlansTest < ApplicationSystemTestCase
  setup do
    @trip_plan = trip_plans(:one)
  end

  test "visiting the index" do
    visit trip_plans_url
    assert_selector "h1", text: "Trip Plans"
  end

  test "creating a Trip plan" do
    visit trip_plans_url
    click_on "New Trip Plan"

    click_on "Create Trip plan"

    assert_text "Trip plan was successfully created"
    click_on "Back"
  end

  test "updating a Trip plan" do
    visit trip_plans_url
    click_on "Edit", match: :first

    click_on "Update Trip plan"

    assert_text "Trip plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip plan" do
    visit trip_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip plan was successfully destroyed"
  end
end
