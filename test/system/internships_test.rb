require "application_system_test_case"

class InternshipsTest < ApplicationSystemTestCase
  setup do
    @internship = internships(:one)
  end

  test "visiting the index" do
    visit internships_url
    assert_selector "h1", text: "Internships"
  end

  test "creating a Internship" do
    visit internships_url
    click_on "New Internship"

    fill_in "Deadline", with: @internship.deadline
    fill_in "Description", with: @internship.description
    fill_in "Duration", with: @internship.duration
    fill_in "Eligibility", with: @internship.eligibility
    fill_in "End", with: @internship.end
    fill_in "Location", with: @internship.location
    fill_in "Start", with: @internship.start
    fill_in "Stipend", with: @internship.stipend
    fill_in "Title", with: @internship.title
    click_on "Create Internship"

    assert_text "Internship was successfully created"
    click_on "Back"
  end

  test "updating a Internship" do
    visit internships_url
    click_on "Edit", match: :first

    fill_in "Deadline", with: @internship.deadline
    fill_in "Description", with: @internship.description
    fill_in "Duration", with: @internship.duration
    fill_in "Eligibility", with: @internship.eligibility
    fill_in "End", with: @internship.end
    fill_in "Location", with: @internship.location
    fill_in "Start", with: @internship.start
    fill_in "Stipend", with: @internship.stipend
    fill_in "Title", with: @internship.title
    click_on "Update Internship"

    assert_text "Internship was successfully updated"
    click_on "Back"
  end

  test "destroying a Internship" do
    visit internships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Internship was successfully destroyed"
  end
end
