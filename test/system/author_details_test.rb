require "application_system_test_case"

class AuthorDetailsTest < ApplicationSystemTestCase
  setup do
    @author_detail = author_details(:one)
  end

  test "visiting the index" do
    visit author_details_url
    assert_selector "h1", text: "Author Details"
  end

  test "creating a Author detail" do
    visit author_details_url
    click_on "New Author Detail"

    fill_in "Age", with: @author_detail.age
    fill_in "Mobileno", with: @author_detail.mobileno
    fill_in "Name", with: @author_detail.name
    click_on "Create Author detail"

    assert_text "Author detail was successfully created"
    click_on "Back"
  end

  test "updating a Author detail" do
    visit author_details_url
    click_on "Edit", match: :first

    fill_in "Age", with: @author_detail.age
    fill_in "Mobileno", with: @author_detail.mobileno
    fill_in "Name", with: @author_detail.name
    click_on "Update Author detail"

    assert_text "Author detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Author detail" do
    visit author_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Author detail was successfully destroyed"
  end
end
