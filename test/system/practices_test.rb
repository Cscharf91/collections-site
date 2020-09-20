require "application_system_test_case"

class PracticesTest < ApplicationSystemTestCase
  setup do
    @practice = practices(:one)
  end

  test "visiting the index" do
    visit practices_url
    assert_selector "h1", text: "Practices"
  end

  test "creating a Practice" do
    visit practices_url
    click_on "New Practice"

    fill_in "Address", with: @practice.address
    fill_in "City", with: @practice.city
    fill_in "Code", with: @practice.code
    fill_in "Name", with: @practice.name
    fill_in "Phone", with: @practice.phone
    fill_in "State", with: @practice.state
    fill_in "Type", with: @practice.type
    fill_in "Zip", with: @practice.zip
    click_on "Create Practice"

    assert_text "Practice was successfully created"
    click_on "Back"
  end

  test "updating a Practice" do
    visit practices_url
    click_on "Edit", match: :first

    fill_in "Address", with: @practice.address
    fill_in "City", with: @practice.city
    fill_in "Code", with: @practice.code
    fill_in "Name", with: @practice.name
    fill_in "Phone", with: @practice.phone
    fill_in "State", with: @practice.state
    fill_in "Type", with: @practice.type
    fill_in "Zip", with: @practice.zip
    click_on "Update Practice"

    assert_text "Practice was successfully updated"
    click_on "Back"
  end

  test "destroying a Practice" do
    visit practices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Practice was successfully destroyed"
  end
end
