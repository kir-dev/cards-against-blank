require 'test_helper'

class WhiteCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @white_card = white_cards(:one)
  end

  test "should get index" do
    get white_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_white_card_url
    assert_response :success
  end

  test "should create white_card" do
    assert_difference('WhiteCard.count') do
      post white_cards_url, params: { white_card: { text: @white_card.text } }
    end

    assert_redirected_to white_card_url(WhiteCard.last)
  end

  test "should show white_card" do
    get white_card_url(@white_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_white_card_url(@white_card)
    assert_response :success
  end

  test "should update white_card" do
    patch white_card_url(@white_card), params: { white_card: { text: @white_card.text } }
    assert_redirected_to white_card_url(@white_card)
  end

  test "should destroy white_card" do
    assert_difference('WhiteCard.count', -1) do
      delete white_card_url(@white_card)
    end

    assert_redirected_to white_cards_url
  end
end
