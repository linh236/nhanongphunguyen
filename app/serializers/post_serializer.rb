class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :content, :youtube_link, :facebook_link, :twitter_link, :tiktok_link, :user, :images

  def user
    scope
  end

  def images 
    images = []
    object.images.map do |image|
      images << rails_blob_path(image , only_path: true) if object.images.attached?
    end
    images
  end
end
