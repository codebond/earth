require 'test_helper'

class StonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stone = stones(:one)
  end

  test "should get index" do
    get stones_url
    assert_response :success
  end

  test "should get new" do
    get new_stone_url
    assert_response :success
  end

  test "should create stone" do
    assert_difference('Stone.count') do
      post stones_url, params: { stone: { info: @stone.info } }
    end

    assert_redirected_to stone_url(Stone.last)
  end

  test "should show stone" do
    get stone_url(@stone)
    assert_response :success
  end

  test "should get edit" do
    get edit_stone_url(@stone)
    assert_response :success
  end

  test "should update stone" do
    patch stone_url(@stone), params: { stone: { info: @stone.info } }
    assert_redirected_to stone_url(@stone)
  end

  test "should destroy stone" do
    assert_difference('Stone.count', -1) do
      delete stone_url(@stone)
    end

    assert_redirected_to stones_url
  end
end
