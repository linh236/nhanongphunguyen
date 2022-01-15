require 'test_helper'

class LikeCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @like_comment = like_comments(:one)
  end

  test "should get index" do
    get like_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_like_comment_url
    assert_response :success
  end

  test "should create like_comment" do
    assert_difference('LikeComment.count') do
      post like_comments_url, params: { like_comment: { comment_id: @like_comment.comment_id, user_id: @like_comment.user_id } }
    end

    assert_redirected_to like_comment_url(LikeComment.last)
  end

  test "should show like_comment" do
    get like_comment_url(@like_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_like_comment_url(@like_comment)
    assert_response :success
  end

  test "should update like_comment" do
    patch like_comment_url(@like_comment), params: { like_comment: { comment_id: @like_comment.comment_id, user_id: @like_comment.user_id } }
    assert_redirected_to like_comment_url(@like_comment)
  end

  test "should destroy like_comment" do
    assert_difference('LikeComment.count', -1) do
      delete like_comment_url(@like_comment)
    end

    assert_redirected_to like_comments_url
  end
end
