json.extract! user_post, :id, :user_id, :show, :created_at, :updated_at
json.url user_post_url(user_post, format: :json)
