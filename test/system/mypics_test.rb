require "application_system_test_case"

class MypicsTest < ApplicationSystemTestCase
  setup do
    @mypic = mypics(:one)
  end

  test "visiting the index" do
    visit mypics_url
    assert_selector "h1", text: "Mypics"
  end

  test "should create mypic" do
    visit mypics_url
    click_on "New mypic"

    fill_in "Image", with: @mypic.image
    click_on "Create Mypic"

    assert_text "Mypic was successfully created"
    click_on "Back"
  end

  test "should update Mypic" do
    visit mypic_url(@mypic)
    click_on "Edit this mypic", match: :first

    fill_in "Image", with: @mypic.image
    click_on "Update Mypic"

    assert_text "Mypic was successfully updated"
    click_on "Back"
  end

  test "should destroy Mypic" do
    visit mypic_url(@mypic)
    click_on "Destroy this mypic", match: :first

    assert_text "Mypic was successfully destroyed"
  end
end
