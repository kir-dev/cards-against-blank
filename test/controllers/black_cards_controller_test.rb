require 'test_helper'

class BlackCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @black_card = black_cards(:one)
  end

  test "should get index" do
    get black_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_black_card_url
    assert_response :success
  end

  test "should create black_card" do
    assert_difference('BlackCard.count') do
      post black_cards_url, params: { black_card: { pick: @black_card.pick, text: @black_card.text } }
    end

    assert_redirected_to black_card_url(BlackCard.last)
  end

  test "should show black_card" do
    get black_card_url(@black_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_black_card_url(@black_card)
    assert_response :success
  end

  test "should update black_card" do
    patch black_card_url(@black_card), params: { black_card: { pick: @black_card.pick, text: @black_card.text } }
    assert_redirected_to black_card_url(@black_card)
  end

  test "should destroy black_card" do
    assert_difference('BlackCard.count', -1) do
      delete black_card_url(@black_card)
    end

    assert_redirected_to black_cards_url
  end
end
