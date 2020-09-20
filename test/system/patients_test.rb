require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Account number", with: @patient.account_number
    fill_in "Fname", with: @patient.fname
    fill_in "Lname", with: @patient.lname
    fill_in "Money due", with: @patient.money_due
    fill_in "Money paid", with: @patient.money_paid
    fill_in "Notes", with: @patient.notes
    fill_in "Phone", with: @patient.phone
    fill_in "Phone2", with: @patient.phone2
    fill_in "Phone3", with: @patient.phone3
    fill_in "Total due", with: @patient.total_due
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Account number", with: @patient.account_number
    fill_in "Fname", with: @patient.fname
    fill_in "Lname", with: @patient.lname
    fill_in "Money due", with: @patient.money_due
    fill_in "Money paid", with: @patient.money_paid
    fill_in "Notes", with: @patient.notes
    fill_in "Phone", with: @patient.phone
    fill_in "Phone2", with: @patient.phone2
    fill_in "Phone3", with: @patient.phone3
    fill_in "Total due", with: @patient.total_due
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
