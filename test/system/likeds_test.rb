require "application_system_test_case"

class LikedsTest < ApplicationSystemTestCase
  setup do
    @liked = likeds(:one)
  end

  test "visiting the index" do
    visit likeds_url
    assert_selector "h1", text: "Likeds"
  end

  test "creating a Liked" do
    visit likeds_url
    click_on "New Liked"

    fill_in "User", with: @liked.user_id
    fill_in "User post", with: @liked.user_post_id
    click_on "Create Liked"

    assert_text "Liked was successfully created"
    click_on "Back"
  end

  test "updating a Liked" do
    visit likeds_url
    click_on "Edit", match: :first

    fill_in "User", with: @liked.user_id
    fill_in "User post", with: @liked.user_post_id
    click_on "Update Liked"

    assert_text "Liked was successfully updated"
    click_on "Back"
  end

  test "destroying a Liked" do
    visit likeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Liked was successfully destroyed"
  end
end
