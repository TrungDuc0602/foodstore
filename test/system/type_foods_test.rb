require "application_system_test_case"

class TypeFoodsTest < ApplicationSystemTestCase
  setup do
    @type_food = type_foods(:one)
  end

  test "visiting the index" do
    visit type_foods_url
    assert_selector "h1", text: "Type Foods"
  end

  test "creating a Type food" do
    visit type_foods_url
    click_on "New Type Food"

    fill_in "Name", with: @type_food.name
    click_on "Create Type food"

    assert_text "Type food was successfully created"
    click_on "Back"
  end

  test "updating a Type food" do
    visit type_foods_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_food.name
    click_on "Update Type food"

    assert_text "Type food was successfully updated"
    click_on "Back"
  end

  test "destroying a Type food" do
    visit type_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type food was successfully destroyed"
  end
end
