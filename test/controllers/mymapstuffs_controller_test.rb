require "test_helper"

class MymapstuffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mymapstuff = mymapstuffs(:one)
  end

  test "should get index" do
    get mymapstuffs_url
    assert_response :success
  end

  test "should get new" do
    get new_mymapstuff_url
    assert_response :success
  end

  test "should create mymapstuff" do
    assert_difference("Mymapstuff.count") do
      post mymapstuffs_url, params: { mymapstuff: { mypic_id: @mymapstuff.mypic_id, title: @mymapstuff.title, x: @mymapstuff.x, y: @mymapstuff.y } }
    end

    assert_redirected_to mymapstuff_url(Mymapstuff.last)
  end

  test "should show mymapstuff" do
    get mymapstuff_url(@mymapstuff)
    assert_response :success
  end

  test "should get edit" do
    get edit_mymapstuff_url(@mymapstuff)
    assert_response :success
  end

  test "should update mymapstuff" do
    patch mymapstuff_url(@mymapstuff), params: { mymapstuff: { mypic_id: @mymapstuff.mypic_id, title: @mymapstuff.title, x: @mymapstuff.x, y: @mymapstuff.y } }
    assert_redirected_to mymapstuff_url(@mymapstuff)
  end

  test "should destroy mymapstuff" do
    assert_difference("Mymapstuff.count", -1) do
      delete mymapstuff_url(@mymapstuff)
    end

    assert_redirected_to mymapstuffs_url
  end
end
