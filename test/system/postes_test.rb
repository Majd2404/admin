require "application_system_test_case"

class PostesTest < ApplicationSystemTestCase
  setup do
    @poste = postes(:one)
  end

  test "visiting the index" do
    visit postes_url
    assert_selector "h1", text: "Postes"
  end

  test "creating a Poste" do
    visit postes_url
    click_on "New Poste"

    fill_in "Description", with: @poste.description
    fill_in "Title", with: @poste.title
    click_on "Create Poste"

    assert_text "Poste was successfully created"
    click_on "Back"
  end

  test "updating a Poste" do
    visit postes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @poste.description
    fill_in "Title", with: @poste.title
    click_on "Update Poste"

    assert_text "Poste was successfully updated"
    click_on "Back"
  end

  test "destroying a Poste" do
    visit postes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poste was successfully destroyed"
  end
end
