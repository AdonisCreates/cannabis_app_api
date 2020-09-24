require 'test_helper'

class WeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weed = weeds(:one)
  end

  test "should get index" do
    get weeds_url, as: :json
    assert_response :success
  end

  test "should create weed" do
    assert_difference('Weed.count') do
      post weeds_url, params: { weed: { brand: @weed.brand, strain: @weed.strain, type: @weed.type } }, as: :json
    end

    assert_response 201
  end

  test "should show weed" do
    get weed_url(@weed), as: :json
    assert_response :success
  end

  test "should update weed" do
    patch weed_url(@weed), params: { weed: { brand: @weed.brand, strain: @weed.strain, type: @weed.type } }, as: :json
    assert_response 200
  end

  test "should destroy weed" do
    assert_difference('Weed.count', -1) do
      delete weed_url(@weed), as: :json
    end

    assert_response 204
  end
end
