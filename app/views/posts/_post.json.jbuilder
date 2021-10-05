json.extract! post, :id, :title, :content, :youtube_link, :facebook_link, :twitter_link, :tiktok_link, :created_at, :updated_at
json.url post_url(post, format: :json)
