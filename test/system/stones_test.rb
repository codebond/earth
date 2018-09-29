require "application_system_test_case"

class StonesTest < ApplicationSystemTestCase
  setup do
    @stone = stones(:one)
  end

  test "visiting the index" do
    visit stones_url
    assert_selector "h1", text: "Stones"
  end

  test "creating a Stone" do
    visit stones_url
    click_on "New Stone"

    fill_in "Info", with: @stone.info
    click_on "Create Stone"

    assert_text "Stone was successfully created"
    click_on "Back"
  end

  test "updating a Stone" do
    visit stones_url
    click_on "Edit", match: :first

    fill_in "Info", with: @stone.info
    click_on "Update Stone"

    assert_text "Stone was successfully updated"
    click_on "Back"
  end

  test "destroying a Stone" do
    visit stones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stone was successfully destroyed"
  end
end
