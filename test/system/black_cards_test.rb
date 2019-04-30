require "application_system_test_case"

class BlackCardsTest < ApplicationSystemTestCase
  setup do
    @black_card = black_cards(:one)
  end

  test "visiting the index" do
    visit black_cards_url
    assert_selector "h1", text: "Black Cards"
  end

  test "creating a Black card" do
    visit black_cards_url
    click_on "New Black Card"

    fill_in "Pick", with: @black_card.pick
    fill_in "Text", with: @black_card.text
    click_on "Create Black card"

    assert_text "Black card was successfully created"
    click_on "Back"
  end

  test "updating a Black card" do
    visit black_cards_url
    click_on "Edit", match: :first

    fill_in "Pick", with: @black_card.pick
    fill_in "Text", with: @black_card.text
    click_on "Update Black card"

    assert_text "Black card was successfully updated"
    click_on "Back"
  end

  test "destroying a Black card" do
    visit black_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Black card was successfully destroyed"
  end
end
