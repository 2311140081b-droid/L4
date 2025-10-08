require "application_system_test_case"

class TopsTest < ApplicationSystemTestCase
  setup do
    @top = tops(:one)
  end

  test "visiting the index" do
    visit tops_url
    assert_selector "h1", text: "Tops"
  end

  test "should create top" do
    visit tops_url
    click_on "New top"

    fill_in "Pass", with: @top.pass
    fill_in "Uid", with: @top.uid
    click_on "Create Top"

    assert_text "Top was successfully created"
    click_on "Back"
  end

  test "should update Top" do
    visit top_url(@top)
    click_on "Edit this top", match: :first

    fill_in "Pass", with: @top.pass
    fill_in "Uid", with: @top.uid
    click_on "Update Top"

    assert_text "Top was successfully updated"
    click_on "Back"
  end

  test "should destroy Top" do
    visit top_url(@top)
    click_on "Destroy this top", match: :first

    assert_text "Top was successfully destroyed"
  end
end
