require "application_system_test_case"

class WhiteCardsTest < ApplicationSystemTestCase
  setup do
    @white_card = white_cards(:one)
  end

  test "visiting the index" do
    visit white_cards_url
    assert_selector "h1", text: "White Cards"
  end

  test "creating a White card" do
    visit white_cards_url
    click_on "New White Card"

    fill_in "Text", with: @white_card.text
    click_on "Create White card"

    assert_text "White card was successfully created"
    click_on "Back"
  end

  test "updating a White card" do
    visit white_cards_url
    click_on "Edit", match: :first

    fill_in "Text", with: @white_card.text
    click_on "Update White card"

    assert_text "White card was successfully updated"
    click_on "Back"
  end

  test "destroying a White card" do
    visit white_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "White card was successfully destroyed"
  end
end
