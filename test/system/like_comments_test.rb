require "application_system_test_case"

class LikeCommentsTest < ApplicationSystemTestCase
  setup do
    @like_comment = like_comments(:one)
  end

  test "visiting the index" do
    visit like_comments_url
    assert_selector "h1", text: "Like Comments"
  end

  test "creating a Like comment" do
    visit like_comments_url
    click_on "New Like Comment"

    fill_in "Comment", with: @like_comment.comment_id
    fill_in "User", with: @like_comment.user_id
    click_on "Create Like comment"

    assert_text "Like comment was successfully created"
    click_on "Back"
  end

  test "updating a Like comment" do
    visit like_comments_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @like_comment.comment_id
    fill_in "User", with: @like_comment.user_id
    click_on "Update Like comment"

    assert_text "Like comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Like comment" do
    visit like_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Like comment was successfully destroyed"
  end
end
