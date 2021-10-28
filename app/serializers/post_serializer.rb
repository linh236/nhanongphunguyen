class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :youtube_link, :facebook_link, :twitter_link, :tiktok_link, :user

  def user
    scope
  end
end
