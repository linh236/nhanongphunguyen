json.extract! like_comment, :id, :comment_id, :user_id, :created_at, :updated_at
json.url like_comment_url(like_comment, format: :json)
