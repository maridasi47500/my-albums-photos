require "test_helper"

class MypicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mypic = mypics(:one)
  end

  test "should get index" do
    get mypics_url
    assert_response :success
  end

  test "should get new" do
    get new_mypic_url
    assert_response :success
  end

  test "should create mypic" do
    assert_difference("Mypic.count") do
      post mypics_url, params: { mypic: { image: @mypic.image } }
    end

    assert_redirected_to mypic_url(Mypic.last)
  end

  test "should show mypic" do
    get mypic_url(@mypic)
    assert_response :success
  end

  test "should get edit" do
    get edit_mypic_url(@mypic)
    assert_response :success
  end

  test "should update mypic" do
    patch mypic_url(@mypic), params: { mypic: { image: @mypic.image } }
    assert_redirected_to mypic_url(@mypic)
  end

  test "should destroy mypic" do
    assert_difference("Mypic.count", -1) do
      delete mypic_url(@mypic)
    end

    assert_redirected_to mypics_url
  end
end
