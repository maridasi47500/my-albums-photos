require "application_system_test_case"

class MymapstuffsTest < ApplicationSystemTestCase
  setup do
    @mymapstuff = mymapstuffs(:one)
  end

  test "visiting the index" do
    visit mymapstuffs_url
    assert_selector "h1", text: "Mymapstuffs"
  end

  test "should create mymapstuff" do
    visit mymapstuffs_url
    click_on "New mymapstuff"

    fill_in "Mypic", with: @mymapstuff.mypic_id
    fill_in "Title", with: @mymapstuff.title
    fill_in "X", with: @mymapstuff.x
    fill_in "Y", with: @mymapstuff.y
    click_on "Create Mymapstuff"

    assert_text "Mymapstuff was successfully created"
    click_on "Back"
  end

  test "should update Mymapstuff" do
    visit mymapstuff_url(@mymapstuff)
    click_on "Edit this mymapstuff", match: :first

    fill_in "Mypic", with: @mymapstuff.mypic_id
    fill_in "Title", with: @mymapstuff.title
    fill_in "X", with: @mymapstuff.x
    fill_in "Y", with: @mymapstuff.y
    click_on "Update Mymapstuff"

    assert_text "Mymapstuff was successfully updated"
    click_on "Back"
  end

  test "should destroy Mymapstuff" do
    visit mymapstuff_url(@mymapstuff)
    click_on "Destroy this mymapstuff", match: :first

    assert_text "Mymapstuff was successfully destroyed"
  end
end
